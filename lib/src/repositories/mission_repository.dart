import 'package:deal/src/protos/AuthService.pb.dart';
import 'package:deal/src/protos/AuthService.pbenum.dart';
import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/protos/MissionService.pbenum.dart';
import 'package:deal/src/services/auth_service.dart';
import 'package:deal/src/services/mission_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MissionRepository {

  final MissionService _missionService;

  MissionRepository({MissionService missionService})
      : _missionService = missionService ?? MissionService.init();

  Future<SearchMissionResponse> getTotalMissionList({int offset, int, amount}) async {
    return await _missionService.searchMission(
      accessToken: "",
      type: MissionType.ALL_MISSION_TYPE,
      keyword: "",
      mode: MissionPageMode.INITIALIZE_MISSION_PAGE,
      offset: offset,
      amount: amount
    );
  }


}