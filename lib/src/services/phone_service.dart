import 'dart:io';

import 'package:deal/src/custom/modules/grpc_singleton.dart';
import 'package:deal/src/protos/Empty.pb.dart';
import 'package:deal/src/protos/PhoneService.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'base_service.dart';

class PhoneService extends BaseService {

  PhoneServiceClient client;

  PhoneService({ @required this.client }):assert(client != null), super();

  static Future<PhoneService> init() async {
    PhoneServiceClient client = PhoneServiceClient(
      await GrpcClientSingleton.instance.channel,
      options: CallOptions(
          timeout: Duration(seconds: 5),
          metadata: { "ticket": "jwtjwt" }
      )
    );
    return PhoneService(client: client);
  }

}