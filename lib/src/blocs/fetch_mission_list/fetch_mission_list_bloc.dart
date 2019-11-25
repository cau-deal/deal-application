import 'package:bloc/bloc.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';

import 'bloc.dart';

class FetchMissionBloc extends Bloc<FetchMissionEvent, FetchMissionState> {

  final MissionType missionType;
  final MissionRepository missionRepository;
  final UserRepository userRepository;

  List<MissionProto> fetchedList = [];

  FetchMissionBloc({this.missionRepository, this.userRepository, this.missionType});

  @override
  get initialState => FetchMissionEmpty();

  @override
  Stream<FetchMissionState> mapEventToState(event) async* {

    if(event is Clear){
      this.fetchedList = [];
      yield FetchMissionEmpty(fetchedList: fetchedList);

    } else if (event is AttachStaticMission){
      if(state is FetchMissionEmpty){
        this.fetchedList.add(
            MissionProto()
              ..missionId=-1
              ..title=event.title
              ..summary=event.summary
              ..thumbnailUrl="asset://res/images/deal-thumbnail.png"
        );
        yield FetchMissionUninitialized(fetchedList: this.fetchedList);
      }

    } else if (event is Fetch && !_hasReachedMax(state)) {
      try {
        if (state is FetchMissionUninitialized) {
          this.fetchedList.addAll(await _fetchHistory());
          yield FetchMissionLoaded(fetchedList:this.fetchedList, hasReachedMax: true);
        }

        /*if (currentState is InquiryLoaded) {
          final state = (currentState as InquiryLoaded);
          final posts = await _fetchHistory(state.inquiries.length, 20);
          yield posts.isEmpty
              ? state.copyWith(hasReachedMax: true)
              : InquiryLoaded(inquiries: state.inquiries + posts, hasReachedMax: false);
        }*/

      } catch (_) {
        print(_.toString());
        yield FetchMissionError();
      }
    }
  }

  bool _hasReachedMax(FetchMissionState state) => state is FetchMissionLoaded && state.hasReachedMax;


  Future<List<MissionProto>> _fetchHistory() async {
    final SearchMissionResponse res = await missionRepository.fetchMissionList(
      accessToken: await userRepository.getAccessToken(),
      type: this.missionType
    );

    if (res.result.resultCode == ResultCode.SUCCESS &&
        res.searchMissionResult == SearchMissionResult.SUCCESS_SEARCH_MISSION_RESULT) {
      return res.missionProtoes;
    } else {
      throw Exception('error fetching register missions');
    }
  }

}
