import 'package:bloc/bloc.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/protos/Data.pb.dart';
import 'package:deal/src/protos/Datetime.pb.dart';
import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';

import 'bloc.dart';

class MissionActBloc extends Bloc<MissionActEvent, MissionActState> {
  final MissionRepository missionRepository;
  final UserRepository userRepository;

  MissionActBloc({this.missionRepository, this.userRepository});

  @override
  get initialState => MissionActState.empty();

  @override
  Stream<MissionActState> mapEventToState(event) async* {
    if(event is SubmitCollectPicture){
      yield* _mapSubmitCollectPictureToState(event);
    } else if(event is FetchProcessPicture){
      yield* _mapFetchProcessPictureToState(event);
    }
  }

  DateTime convertDate(Datetime d){
    return DateTime(d.year, d.month, d.day, d.hour, d.min, d.sec);
  }

  Stream<MissionActState> _mapFetchProcessPictureToState(FetchProcessPicture evt) async* {
    try {
      if (await userRepository.hasToken()) {
        GetProcessMissionImagesResponse res = await missionRepository.fetchProcessImagesByMissionId(
            accessToken: await userRepository.getAccessToken(),
            missionId: evt.missionId,
        );

        bool isValid = (res.result.resultCode == ResultCode.SUCCESS);

        print(isValid);

        if (isValid) {
          yield MissionActState.success(res.urls, state.labels);
        } else {
          yield MissionActState.failure();
        }
      }
    } catch(_) {
      print(_.toString());
    }
  }


  Stream<MissionActState> _mapSubmitCollectPictureToState(SubmitCollectPicture evt) async* {

    try {

      if (await userRepository.hasToken()) {
        SubmitCollectMissionOutputResponse res = await missionRepository.submitCollectMissionByMissionId(
            accessToken: await userRepository.getAccessToken(),
            missionId: evt.missionId,
            urls: evt.images
        );

        bool isValid = (res.result.resultCode == ResultCode.SUCCESS);

        print(isValid);

        if (isValid) {
          yield MissionActState.success([], []);
        } else {
          yield MissionActState.failure();
        }
      }

    } catch(_) {
      print(_.toString());
    }

  }

}
