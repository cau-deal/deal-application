import 'dart:io';

import 'package:deal/src/custom/modules/grpc_singleton.dart';
import 'package:deal/src/protos/AuthService/AuthService.pbgrpc.dart';
import 'package:deal/src/protos/AuthService/CommonResult.pb.dart';
import 'package:deal/src/protos/AuthService/PlatformType.pbenum.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

class AuthService {

  AuthServiceClient client;

  AuthService({ @required this.client }):assert(client != null);

  static Future<AuthService> init() async {
    var client = AuthServiceClient(
      await GrpcClientSingleton.instance.channel,
      options: CallOptions(
        timeout: Duration(minutes: 3),
        metadata: { "ticket": "jwtjwt" }
      )
    );

    return AuthService(client: client);
  }


  Future<SignInResponse> signInWithCredential({
    String email, String password
  }) async {

    SignInResponse res = SignInResponse();

    try {
      SignInRequest req = SignInRequest();
      req.email = email;
      req.password = password;
      res = await client.signInWithCredential(req);

    } catch(e){
      print(e.toString());
    }

    return res;
  }


  Future<SignUpResponse> signUp({
    String email, String password, bool agreeWithTerms, AccountType accountType
  }) async {

    try {
      SignUpRequest req = SignUpRequest();
      req.email = email;
      req.password = password;
      req.agreeWithTerms = agreeWithTerms ?? false;
      req.type = accountType;
      req.platform = Platform.isAndroid ? PlatformType.ANDROID : PlatformType.IOS;
      return await client.signUp(req);

    } catch(e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

}