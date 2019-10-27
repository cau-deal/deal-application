import 'package:bloc/bloc.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/protos/DealService.pbgrpc.dart';
import 'package:deal/src/protos/PointService.pb.dart';
import 'package:deal/src/repositories/deal_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/services/point_service.dart';
import 'package:rxdart/rxdart.dart';

import 'bloc.dart';

class PointHistoryBloc extends Bloc<PointHistoryEvent, PointHistoryState> {
//  final DealRepository dealRepository;

  final UserRepository userRepository;
  final bool forPlusHistory;
//
  PointHistoryBloc({this.userRepository, this.forPlusHistory});

  @override
  Stream<PointHistoryState> transformEvents(
    Stream<PointHistoryEvent> events,
    Stream<PointHistoryState> Function(PointHistoryEvent event) next,
  ) {
    return super.transformEvents(
      (events as Observable<PointHistoryEvent>).debounceTime(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }

  @override
  get initialState => PointHistoryUninitialized();

  @override
  Stream<PointHistoryState> mapEventToState(PointHistoryEvent event) async* {
    if (event is Fetch && !_hasReachedMax(state)) {
      try {
        if (state is PointHistoryUninitialized) {
          final histories = await _fetchHistory(30, forPlusHistory);
          yield PointHistoryLoaded(histories: histories, hasReachedMax: true);
        }

        /*if (currentState is InquiryLoaded) {
          final state = (currentState as InquiryLoaded);
          final posts = await _fetchHistory(state.inquiries.length, 20);
          yield posts.isEmpty
              ? state.copyWith(hasReachedMax: true)
              : InquiryLoaded(inquiries: state.inquiries + posts, hasReachedMax: false);
        }*/

      } catch (_) {
        yield PointHistoryError();
      }
    }
  }

  bool _hasReachedMax(PointHistoryState state) => state is PointHistoryLoaded && state.hasReachedMax;

  Future<List<PointHistory>> _fetchHistory(int duration, bool isPlus) async {
    final PointService ps = await PointService.init();

    final LookUpPointHistoryResponse res = await ps.fetchPointHistory(
      accessToken: await userRepository.getAccessToken(),
      isPlus: isPlus,
      duration: duration
    );

    if (res.result.resultCode == ResultCode.SUCCESS) {
      return res.pointHistories;
    } else {
      throw Exception('error fetching histories');
    }
  }
}
