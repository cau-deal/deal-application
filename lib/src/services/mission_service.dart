import 'dart:io';

import 'package:deal/src/custom/modules/grpc_singleton.dart';
import 'package:deal/src/protos/DealService.pb.dart';
import 'package:deal/src/protos/DealService.pbgrpc.dart';
import 'package:deal/src/protos/DealService.pbgrpc.dart';
import 'package:deal/src/protos/Empty.pb.dart';
import 'package:deal/src/protos/MissionService.pbgrpc.dart';
import 'package:deal/src/protos/PhoneService.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'base_service.dart';

class MissionService extends BaseService {

  MissionServiceClient client;

  MissionService({ @required this.client }):assert(client != null), super();

  static Future<MissionService> init() async {
    MissionServiceClient client = MissionServiceClient(
      await GrpcClientSingleton.instance.channel,
      options: CallOptions(
          timeout: Duration(seconds: 5),
          metadata: { "ticket": "jwtjwt" }
      )
    );
    return MissionService(client: client);
  }

  Future<SearchMissionResponse> searchMission({
    String accessToken,
    MissionType type,
    String keyword,
    MissionPageMode mode,
    int offset,
    int amount
  }) async {

    SearchMissionRequest req = SearchMissionRequest();
    SearchMissionResponse res = SearchMissionResponse();

    try {
      req.missionType = type;
      req.keyword = keyword;
      req.missionPage = MissionPage();
      req.missionPage.missionPage = mode;
      req.missionPage.offset = offset;
      req.missionPage.amount = amount;

      res = await client.searchMission(
          req,
          options: CallOptions(metadata: {'ticket':accessToken})
      );

    } catch(e) {
      print(e.toString());
    }

    return res;
  }



}