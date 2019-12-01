import 'dart:async';
import 'package:bloc/bloc.dart';

import 'package:deal/src/blocs/main_screen/main_screen_bloc.dart';
import 'package:deal/src/blocs/main_screen/bloc.dart';
import 'package:deal/src/custom/modules/validators.dart';

import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';

import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/services/mission_service.dart';
import 'package:deal/src/services/mission_service.dart' as prefix0;
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  final UserRepository userRepository;

  MainScreenBloc({@required this.userRepository})
      : assert(userRepository != null);

  @override
  MainScreenState get initialState => MainScreenState.empty();

  @override
  Stream<MainScreenState> mapEventToState(MainScreenEvent event) {
    // TODO: implement mapEventToState
    return null;
  }

  Stream<MainScreenState> _mapMainScreenLoading() async*{
    yield MainScreenState.loading();

    try {
      final imgs = await _fetchRecommendImages();
      yield MainScreenState.success();
    } catch(_){
      yield MainScreenState.failure();
    }
  }

  Future<List<MissionRecommendImage>> _fetchRecommendImages() async {
    final MissionService ms = await prefix0.MissionService.init();
    final GetRecommendMissionImagesResponse res = await ms
        .getRecommendMissionImages(
      accessToken: await userRepository.getAccessToken(),
    );

    if(res.result.resultCode == ResultCode.SUCCESS){
      return res.missionRecommendImages;
    } else{
      throw Exception('error fetching recommend missions');
    }
  }
}
