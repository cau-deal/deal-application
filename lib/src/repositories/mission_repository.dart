import 'package:deal/src/protos/Data.pbenum.dart';
import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/protos/MissionService.pbenum.dart';
import 'package:deal/src/services/mission_service.dart';

// TODO Repo단에서 accesstoken 처리하자
class MissionRepository {
  final MissionService _missionService;

  MissionRepository({MissionService missionService}) : _missionService = missionService ?? MissionService.init();

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
    return await _missionService.createMission(
      accessToken: accessToken, title: title, subtitle: subtitle, point: point, unit: unit, totalCnt: totalCnt,
      start: start, end: end, missionType: missionType, dataType: dataType, summary: summary, instruction: instruction,
      terms: terms, thumbnailUri: thumbnailUri, imageUris: imageUris
    );
  }

  Future<SearchMissionResponse> getTotalMissionList({String accessToken, MissionType type}) async {
    return await _missionService.fetchMission(
        accessToken: accessToken,
        type: type,
        keyword: "",
        mode: MissionPageMode.INITIALIZE_MISSION_PAGE,
        offset: 0,
        amount: 100
    );
  }

  Future<SearchMissionResponse> fetchMissionList({String accessToken, MissionType type}) async {
    return await _missionService.fetchMission(
      accessToken: accessToken,
      type: type,
      keyword: "",
      mode: MissionPageMode.INITIALIZE_MISSION_PAGE,
      offset: 0,
      amount: 100
    );
  }

  Future<SearchMissionWithIdResponse> fetchMissionById({String accessToken, int missionId}) async {
    return await _missionService.fetchMissionById(
      accessToken: accessToken,
      missionId: missionId
    );
  }

  Future<GetAssignedMissionResponse> assignMissionById({String accessToken, int missionId}) async {
    return await _missionService.assignByMissionId(
        accessToken: accessToken,
        missionId: missionId
    );
  }

  Future<SearchRegisterMissionRelevantMeResponse> fetchRegisterMissionRelevantFromMe({String accessToken}) async {
    return await _missionService.fetchRegisterMissionRelevantFromMe(accessToken: accessToken);
  }

  Future<SearchConductMissionRelevantMeResponse> fetchConductMissionRelevantFromMe({String accessToken}) async {
    return await _missionService.fetchConductMissionRelevantFromMe(accessToken: accessToken);
  }

}
