import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/protos/PointService.pb.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/services/mission_service.dart';
import 'package:deal/src/services/point_service.dart';

import 'bloc.dart';

class MyPageBloc extends Bloc<MyPageEvent, MyPageState> {

  final UserRepository userRepository;

  MyPageBloc(this.userRepository);

  @override
  MyPageState get initialState => MyPageState.empty();

  @override
  Stream<MyPageState> mapEventToState(MyPageEvent event) async* {
    if (event is MyPageInitialized){
      yield* _mapMyPageInitializedToState();
    } else if (event is MissionClicked) {
      yield* _mapMissionClickedToState();
    } else if (event is PointClicked) {
      yield* _mapPointClickedToState();
    } else if (event is MessageClicked) {
      yield* _mapMessageClickedToState();
    }
  }

  Stream<MyPageState> _mapMyPageInitializedToState() async* {

    int point = 0;
    int mission = 0;
    int message = 0;

    try {
      PointService ps = await PointService.init();
      MissionService ms = await MissionService.init();

      if( await userRepository.hasToken() ){
        String token = await userRepository.getAccessToken();
        LookUpBalanceResponse lbr = await ps.fetchCurrentPoint(accessToken: token);
        CountFetchMissionResponse fmc = await ms.fetchCurrentMissionCount(accessToken: token);

        point = (lbr.result.resultCode == ResultCode.SUCCESS)? lbr.balance.toInt() : 0;
        mission = (fmc.result.resultCode == ResultCode.SUCCESS)? fmc.val.toInt() : 0;
      }

    } catch(e){
      print(e);
    }

    yield state.update(
      isPointSection: false, isMissionSection: true, isMessageSection: false,
      point: point, mission: mission, message: message
    );
  }

  Stream<MyPageState> _mapMissionClickedToState() async* {
    yield state.update(isPointSection: false, isMissionSection: true, isMessageSection: false);
  }

  Stream<MyPageState> _mapPointClickedToState() async* {
    yield state.update(isPointSection: true, isMissionSection: false, isMessageSection: false);
  }

  Stream<MyPageState> _mapMessageClickedToState() async* {
    yield state.update(isPointSection: false, isMissionSection: false, isMessageSection: true);
  }
}
