import 'dart:io';

import 'package:deal/src/custom/modules/grpc_singleton.dart';
import 'package:deal/src/protos/Date.pb.dart';
import 'package:deal/src/protos/Empty.pb.dart';
import 'package:deal/src/protos/PhoneService.pbgrpc.dart';
import 'package:deal/src/protos/UserService.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'base_service.dart';

class UserService extends BaseService {

  UserServiceClient client;

  UserService({ @required this.client }):assert(client != null), super();

  static Future<UserService> init() async {
    UserServiceClient client = UserServiceClient(
      await GrpcClientSingleton.instance.channel,
      options: CallOptions(
          timeout: Duration(seconds: 5),
          metadata: { "ticket": "jwtjwt" }
      )
    );
    return UserService(client: client);
  }


  Future<LookUpAuthInfoResponse> lookUpUserAuthInfo({
    String accessToken,
  }) async {

    Empty req = Empty();
    LookUpAuthInfoResponse res = LookUpAuthInfoResponse();

    try {
      res = await client.lookUpAuthInfo(req, options: CallOptions(metadata: {'ticket':accessToken}));
    } catch(e){
      print(e.toString());
    }

    return res;
  }

}