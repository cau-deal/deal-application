import 'package:deal/src/custom/modules/grpc_singleton.dart';
import 'package:deal/src/protos/Data.pb.dart';
import 'package:deal/src/protos/Datetime.pb.dart';
import 'package:deal/src/protos/Empty.pb.dart';
import 'package:deal/src/protos/MissionService.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';

import 'base_service.dart';

class MissionService extends BaseService {
  MissionServiceClient client;

  MissionService({@required this.client})
      : assert(client != null),
        super();

  static Future<MissionService> init() async {
    MissionServiceClient client =
        MissionServiceClient(await GrpcClientSingleton.instance.channel, options: CallOptions(timeout: Duration(seconds: 5), metadata: {"ticket": "jwtjwt"}));
    return MissionService(client: client);
  }

  Future<RegisterMissionResponse> createMission({
    String accessToken,
    String title,
    String subtitle,
    int point, int unit, int totalCnt,
    DateTime start, DateTime end,
    MissionType missionType, DataType dataType,
    String summary,
    String instruction,
    String terms,
    String thumbnailUri,
    List<String> imageUris
  }) async {
    RegisterMissionRequest req = RegisterMissionRequest();
    RegisterMissionResponse res = RegisterMissionResponse();

    try {
      Mission mission = Mission();
      mission.title = title;
      mission.summary = subtitle;
      mission.priceOfPackage = point;
      mission.unitPackage = unit;
      mission.orderPackageQuantity = totalCnt;
      mission.missionType = missionType;
      mission.dataType = dataType;

      mission.contents = summary; // 의뢰 설명
      mission.specification = instruction; // 수행방법
      mission.contactClause = terms; // 약관

      mission.missionExplanationImages.add(
        MissionExplanationImage()
          ..type=MissionExplanationImageType.THUMBNAIL_MISSION_EXPLANATION_IMAGE_TYPE
          ..url=thumbnailUri
      );

      Datetime from = Datetime()
        ..year=start.year..month=start.month..day=start.day
        ..hour=start.hour..min=start.minute..sec=start.second;
      Datetime to = Datetime()
        ..year=end.year..month=end.month..day=end.day
        ..hour=end.hour..min=end.minute..sec=end.second;

      mission.beginning = from;
      mission.deadline = to;

      req.mission = mission;

      res = await client.registerMission(req,  options: CallOptions(metadata: {'ticket': accessToken}));

    } catch (e) {
      print(e.toString());
    }

    return res;
  }

  Future<SearchMissionResponse> fetchMission({
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
      req.missionPage.offset = offset;
      req.missionPage.amount = amount;

      res = await client.searchMission(
          req,
          options: CallOptions(metadata: {'ticket': accessToken})
      );

    } catch (e) {
      print(e.toString());
    }

    return res;
  }


  Future<SearchMissionWithIdResponse> fetchMissionById({String accessToken, int missionId}) async {

    MissionIdRequest req = MissionIdRequest();
    SearchMissionWithIdResponse res = SearchMissionWithIdResponse();

    try {
      req.missionId = missionId;
      res = await client.searchMissionWithId(req, options: CallOptions(metadata: {'ticket': accessToken}));
    } catch (e) {
      print(e.toString());
    }

    return res;
  }

  Future<CountFetchMissionResponse> fetchCurrentMissionCount({String accessToken}) async {
    Empty req = Empty();
    CountFetchMissionResponse res = CountFetchMissionResponse();

    try {
      res = await client.countFetchMission(req, options: CallOptions(metadata: {'ticket': accessToken}));
    } catch (e) {
      print(e.toString());
    }

    return res;
  }

  Future<SearchRegisterMissionRelevantMeResponse> fetchRegisterMissionRelevantFromMe({String accessToken}) async {
    SearchMissionRelevantMeRequest req = SearchMissionRelevantMeRequest();
    SearchRegisterMissionRelevantMeResponse res = SearchRegisterMissionRelevantMeResponse();

    req.missionPage = MissionPage();
    req.missionPage.missionPageMode = MissionPageMode.INITIALIZE_MISSION_PAGE;
    req.missionPage.offset = 0;
    req.missionPage.amount = 30;

    try {
      res = await client.searchRegisterMissionRelevantMe(req, options: CallOptions(metadata: {'ticket': accessToken}));
    } catch (e) {
      print(e.toString());
    }

    return res;
  }

  Future<SearchConductMissionRelevantMeResponse> fetchConductMissionRelevantFromMe({String accessToken}) async {
    SearchMissionRelevantMeRequest req = SearchMissionRelevantMeRequest();
    SearchConductMissionRelevantMeResponse res = SearchConductMissionRelevantMeResponse();

    req.missionPage = MissionPage();
    req.missionPage.missionPageMode = MissionPageMode.INITIALIZE_MISSION_PAGE;
    req.missionPage.offset = 0;
    req.missionPage.amount = 30;

    try {
      res = await client.searchConductMissionRelevantMe(req, options: CallOptions(metadata: {'ticket': accessToken}));
    } catch (e) {
      print(e.toString());
    }

    return res;
  }

  Future<GetAssignedMissionResponse> assignByMissionId({String accessToken, int missionId}) async {
    MissionIdRequest req = MissionIdRequest();
    GetAssignedMissionResponse res = GetAssignedMissionResponse();

    req.missionId = missionId;

    try {
      res = await client.getAssignedMission(
          req,
          options: CallOptions(metadata: {'ticket': accessToken})
      );
    } catch (e) {
      print(e.toString());
    }

    return res;
  }

  Future<GetMissionOwnerInfoResponse> fetchOwnerInfoByMissionId({String accessToken, int missionId}) async {
    MissionIdRequest req = MissionIdRequest()..missionId=missionId;
    GetMissionOwnerInfoResponse res = GetMissionOwnerInfoResponse();

    try {
      res = await client.getMissionOwnerInfo(req, options: CallOptions(metadata: {'ticket': accessToken}));
    } catch (_) {
      print(_.toString());
    }

    return res;
  }

  Future<GetParticipatedMissionStateResponse> fetchConductMissionStateByMissionId({String accessToken, int missionId}) async {
    MissionIdRequest req = MissionIdRequest()..missionId=missionId;
    GetParticipatedMissionStateResponse res = GetParticipatedMissionStateResponse();

    try {
      res = await client.getParticipatedMissionState(req, options: CallOptions(metadata: {'ticket': accessToken}));
    } catch (_) {
      print(_.toString());
    }

    return res;
  }

//  rpc GetAssignedMission(MissionIdRequest) returns (GetAssignedMissionResponse);


//  rpc SearchRegisterMissionRelevantMe(SearchMissionRelevantMeRequest) returns (SearchRegisterMissionRelevantMeResponse);
//  rpc SearchConductMissionRelevantMe(SearchMissionRelevantMeRequest) returns (SearchConductMissionRelevantMeResponse);


}
