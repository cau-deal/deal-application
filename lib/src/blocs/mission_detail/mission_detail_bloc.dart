import 'package:bloc/bloc.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/protos/Data.pb.dart';
import 'package:deal/src/protos/Datetime.pb.dart';
import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';

import 'bloc.dart';

class MissionDetailBloc extends Bloc<MissionDetailEvent, MissionDetailState> {
  final MissionRepository missionRepository;
  final UserRepository userRepository;

  MissionDetailBloc({this.missionRepository, this.userRepository});

  @override
  get initialState => MissionDetailState.empty();

  @override
  Stream<MissionDetailState> mapEventToState(event) async* {
    if(event is Fetch){
      yield* _mapFetchToState(event);
    } else if(event is ButtonPressed){
      yield* _mapPressedToState(event);
    }
  }

  DateTime convertDate(Datetime d){
    return DateTime(d.year, d.month, d.day, d.hour, d.min, d.sec);
  }

  Stream<MissionDetailState> _mapFetchToState(Fetch evt) async* {

    try {

      if (await userRepository.hasToken()) {
        SearchMissionWithIdResponse res = await missionRepository.fetchMissionById(
            accessToken: await userRepository.getAccessToken(),
            missionId: evt.missionId
        );

        GetMissionOwnerInfoResponse ownerInfo = await missionRepository.fetchOwnerInfoByMissionId(
          accessToken: await userRepository.getAccessToken(),
          missionId: evt.missionId
        );

        GetParticipatedMissionStateResponse conductMissionState = await missionRepository.fetchConductMissionStateByMissionId(
          accessToken: await userRepository.getAccessToken(),
          missionId: evt.missionId
        );

        bool isValid = (res.result.resultCode == ResultCode.SUCCESS &&
            res.searchMissionResult == SearchMissionResult.SUCCESS_SEARCH_MISSION_RESULT) &&
            (ownerInfo.result.resultCode == ResultCode.SUCCESS);

        print(isValid);

        if (isValid) {
          final result = res.mission;
          final missionThumbnail = result.missionExplanationImages
              .where((img) => (img.type == MissionExplanationImageType.THUMBNAIL_MISSION_EXPLANATION_IMAGE_TYPE))
              .first;
          
          yield state.update(
            title: result.title,
            subTitle: result.summary,
            point: result.priceOfPackage,
            unit: result.unitPackage,
            owner: ownerInfo.registerProfile,
            totalCnt: result.orderPackageQuantity,
            thumbnailUri: missionThumbnail != null? missionThumbnail.url : "",
            missionType: result.missionType,
            missionState: result.missionState,
            conductMissionState: (conductMissionState.result.resultCode == ResultCode.SUCCESS)
                ? conductMissionState.conductMissionState
                : ConductMissionState.UNKNOWN_CONDUCT_MISSION_STATE,
            dataType: result.dataType,
            startDate: convertDate(result.beginning),
            endDate: convertDate(result.deadline),
            missionSummary: result.contents,
            missionInst: result.specification,
            missionTerm: result.contactClause,
            isAgreeWithTerms: false
          );
        }
      }

    } catch(_) {
      print(_.toString());
    }

  }

  Stream<MissionDetailState> _mapPressedToState(ButtonPressed evt) async* {

    try {

      if (await userRepository.hasToken()) {
        GetAssignedMissionResponse res = await missionRepository.assignMissionById(
            accessToken: await userRepository.getAccessToken(),
            missionId: evt.missionId
        );

        if (res.result.resultCode == ResultCode.SUCCESS
            && res.assignMissionResult == AssignMissionResult.SUCCESS_ASSIGN_MISSION_RESULT) {

          yield state.update(
            missionState: MissionState.DURING_MISSION
          );
        }
      }

    } catch(_) {
      print(_.toString());
    }

  }

}
