import 'package:bloc/bloc.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:rxdart/rxdart.dart';

import 'bloc.dart';

class RegisterMissionHistoryBloc extends Bloc<RegisterMissionHistoryEvent, RegisterMissionHistoryState> {
  final MissionRepository missionRepository;
  final UserRepository userRepository;

  RegisterMissionHistoryBloc({this.missionRepository, this.userRepository});

  @override
  Stream<RegisterMissionHistoryState> transformEvents(
    Stream<RegisterMissionHistoryEvent> events,
    Stream<RegisterMissionHistoryState> Function(RegisterMissionHistoryEvent event) next,
  ) {
    return super.transformEvents(
      (events as Observable<RegisterMissionHistoryEvent>).debounceTime(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }

  @override
  get initialState => HistoryUninitialized();

  @override
  Stream<RegisterMissionHistoryState> mapEventToState(event) async* {
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

  bool _hasReachedMax(RegisterMissionHistoryState state) => state is HistoryLoaded && state.hasReachedMax;


  Future<List<MissionProto>> _fetchHistory() async {
    final SearchRegisterMissionRelevantMeResponse res = await missionRepository.fetchRegisterMissionRelevantFromMe(
        accessToken: await userRepository.getAccessToken()
    );

    if (res.result.resultCode == ResultCode.SUCCESS &&
        res.searchMissionResult == SearchMissionResult.SUCCESS_SEARCH_MISSION_RESULT) {
      return res.missionProtoes;
    } else {
      throw Exception('error fetching register missions');
    }
  }

}
