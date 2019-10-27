import 'package:bloc/bloc.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:rxdart/rxdart.dart';

import 'bloc.dart';

class ConductMissionHistoryBloc extends Bloc<ConductMissionHistoryEvent, ConductMissionHistoryState> {
  final MissionRepository missionRepository;
  final UserRepository userRepository;

  ConductMissionHistoryBloc({this.missionRepository, this.userRepository});

  @override
  Stream<ConductMissionHistoryState> transformEvents(
    Stream<ConductMissionHistoryEvent> events,
    Stream<ConductMissionHistoryState> Function(ConductMissionHistoryEvent event) next,
  ) {
    return super.transformEvents(
      (events as Observable<ConductMissionHistoryEvent>).debounceTime(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }

  @override
  get initialState => HistoryUninitialized();

  @override
  Stream<ConductMissionHistoryState> mapEventToState(event) async* {
    if (event is Fetch && !_hasReachedMax(state)) {
      try {
        if (state is HistoryUninitialized) {
          final histories = await _fetchHistory();
          yield HistoryLoaded(histories: histories, hasReachedMax: true);
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
        yield HistoryError();
      }
    }
  }

  bool _hasReachedMax(ConductMissionHistoryState state) => state is HistoryLoaded && state.hasReachedMax;


  Future<List<ConductMissionProto>> _fetchHistory() async {
    final SearchConductMissionRelevantMeResponse res = await missionRepository.fetchConductMissionRelevantFromMe(
        accessToken: await userRepository.getAccessToken()
    );

    if (res.result.resultCode == ResultCode.SUCCESS &&
        res.searchMissionResult == SearchMissionResult.SUCCESS_SEARCH_MISSION_RESULT) {

      return res.conductMissionProtoes;

    } else {
      throw Exception('error fetching register missions');
    }
  }

}
