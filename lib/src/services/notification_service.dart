import 'package:deal/src/custom/modules/grpc_singleton.dart';
import 'package:deal/src/protos/Empty.pb.dart';

import 'package:deal/src/protos/NotificationService.pb.dart';
import 'package:deal/src/protos/NotificationService.pbenum.dart';
import 'package:deal/src/protos/NotificationService.pbgrpc.dart';
import 'package:deal/src/protos/NotificationService.pbjson.dart';

import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'base_service.dart';

class NotificationService extends BaseService {
  NotificationServiceClient client;

  NotificationService({@required this.client})
      : assert(client != null),
        super();

  static Future<NotificationService> init() async {
    NotificationServiceClient client =
    NotificationServiceClient(await GrpcClientSingleton.instance.channel, options: CallOptions(timeout: Duration(seconds: 5), metadata: {"ticket": "jwtjwt"}));
    return NotificationService(client: client);
  }

  Future<GetPushListResponse> requestPushList({String accessToken, IsReadPushType pushType}) async{
    GetPushListResponse res = GetPushListResponse();
    GetPushListRequest req = GetPushListRequest();
    IsReadPushType ptype = pushType;

    try {
      req.isReadPushType = ptype;

      res = await client.getPushList(req, options:  CallOptions(metadata: {'ticket': accessToken}));
    } catch(e){
      print(e.toString());
    }
    return res;
  }
}
