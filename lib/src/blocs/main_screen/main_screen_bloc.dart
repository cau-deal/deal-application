import 'package:bloc/bloc.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';

import 'bloc.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final MissionRepository missionRepository;
  final UserRepository userRepository;

  MainScreenBloc({this.missionRepository, this.userRepository});

  @override
  get initialState => MainScreenState.empty();

  @override
  Stream<MainScreenState> mapEventToState(event) async* {
    if(event is FetchMainScreen){
      yield* _mapFetchMainScreenToState(event);
    }
  }

  Stream<MainScreenState> _mapFetchMainScreenToState(FetchMainScreen evt) async* {
    try {
      if (await userRepository.hasToken()) {

        yield MainScreenState.loading();

        GetRecommendMissionImagesResponse rmd = await missionRepository.fetchRecommendMissionImages(
            accessToken: await userRepository.getAccessToken(),
        );

        SearchMissionResponse cm = await missionRepository.fetchMissionList(
            accessToken: await userRepository.getAccessToken(),
            type: MissionType.COLLECT_MISSION_TYPE,
            amount: 6
        );

        SearchMissionResponse pm = await missionRepository.fetchMissionList(
            accessToken: await userRepository.getAccessToken(),
            type: MissionType.PROCESS_MISSION_TYPE,
            amount: 6
        );

        bool isValid = (rmd.result.resultCode == ResultCode.SUCCESS) &&
            (cm.result.resultCode == ResultCode.SUCCESS) &&
            (pm.result.resultCode == ResultCode.SUCCESS);

        if (isValid) {
          yield MainScreenState.success(rmd.missionRecommendImages, cm.missionProtoes, pm.missionProtoes);
        } else {
          yield MainScreenState.failure();
        }
      }
    } catch(_) {
      print(_.toString());
    }
  }

}
