import 'dart:io';

import 'package:deal/src/custom/modules/grpc_singleton.dart';
import 'package:deal/src/protos/AuthService.pbgrpc.dart';
import 'package:deal/src/protos/Empty.pb.dart';
import 'package:deal/src/protos/PlatformType.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'base_service.dart';

class AuthService extends BaseService {
  AuthServiceClient client;

  AuthService({@required this.client})
      : assert(client != null),
        super();

  static Future<AuthService> init() async {
    AuthServiceClient client =
        AuthServiceClient(await GrpcClientSingleton.instance.channel, options: CallOptions(timeout: Duration(seconds: 10), metadata: {"ticket": "jwtjwt"}));
    return AuthService(client: client);
  }

  Future<SignInResponse> signInWithCredential({String email, String password}) async {
    SignInResponse res = SignInResponse();

    try {
      SignInRequest req = SignInRequest();
      req.email = email;
      req.password = password;
      res = await client.signInWithCredential(req);
    } catch (e) {
      print(e.toString());
    }

    return res;
  }

  Future<SignInResponse> signInWithToken({String accessToken}) async {
    SignInResponse res = SignInResponse();

    try {
      Empty req = Empty();
      res = await client.signInWithToken(req, options: CallOptions(metadata: {'ticket': accessToken}));
    } catch (e) {
      print(e.toString());
    }

    return res;
  }

  Future<SignInResponse> signInWithGoogle({String email, String password, String profileImageUrl}) async {
    SignInResponse res = SignInResponse();

    try {
      GoogleSignInRequest req = GoogleSignInRequest();
      req.credential = SignInRequest();
      req.profile = GoogleProfile();

      req.credential.email = email;
      req.credential.password = password;
      req.profile.profileImage = profileImageUrl;

      res = await client.signInWithGoogle(req);
    } catch (e) {
      print(e.toString());
    }

    return res;
  }

  Future<SignUpResponse> signUp({String email, String password, bool agreeWithTerms, AccountType accountType}) async {
    try {
      SignUpRequest req = SignUpRequest();
      req.email = email;
      req.password = password;
      req.agreeWithTerms = agreeWithTerms ?? false;
      req.type = accountType;
      req.platform = Platform.isAndroid ? PlatformType.ANDROID : PlatformType.IOS;
      return await client.signUp(req);
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<void> signOut() async {
    try {} catch (e) {
      print(e.toString());
    }
  }

  Future<FindPasswordResponse> findPassword({String email}) async {
    FindPasswordResponse res = FindPasswordResponse();

    try {
      FindPasswordRequest req = FindPasswordRequest();
      req.email = email;
      res = await client.findPassword(req);
    } catch (e) {
      print(e.toString());
    }

    return res;
  }
}
