import 'package:bloc/bloc.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';

import 'package:deal/src/protos/NotificationService.pb.dart';
import 'package:deal/src/services/notification_service.dart';

import 'package:deal/src/repositories/user_repository.dart';
import 'package:rxdart/rxdart.dart';

import 'bloc.dart';

class MessageHistoryBloc extends Bloc<MessageHistoryEvent, MessageHistoryState> {
//  final DealRepository dealRepository;

  final UserRepository userRepository;
  final int getPushType;
//
  MessageHistoryBloc({this.userRepository, this.getPushType});

  @override
  Stream<MessageHistoryState> transformEvents(
      Stream<MessageHistoryEvent> events,
      Stream<MessageHistoryState> Function(MessageHistoryEvent event) next,
      ) {
    return super.transformEvents(
      (events as Observable<MessageHistoryEvent>).debounceTime(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }

  @override
  get initialState => MessageHistoryUninitialized();

  @override
  Stream<MessageHistoryState> mapEventToState(MessageHistoryEvent event) async* {
    if (event is Fetch && !_hasReachedMax(state)) {
      try {
        if (state is MessageHistoryUninitialized) {
          IsReadPushType pType = IsReadPushType.NOT_READ_IS_READ_PUSH_TYPE;
          final histories = await _fetchHistory(pType);
          yield MessageHistoryLoaded(histories: histories, hasReachedMax: true);
        }

        /*if (currentState is InquiryLoaded) {
          final state = (currentState as InquiryLoaded);
          final posts = await _fetchHistory(state.inquiries.length, 20);
          yield posts.isEmpty
              ? state.copyWith(hasReachedMax: true)
              : InquiryLoaded(inquiries: state.inquiries + posts, hasReachedMax: false);
        }*/

      } catch (_) {
        yield MessageHistoryError();
      }
    }
  }

  bool _hasReachedMax(MessageHistoryState state) => state is MessageHistoryLoaded && state.hasReachedMax;

  Future<List<Push>> _fetchHistory(IsReadPushType pType) async {
    final NotificationService ns = await NotificationService.init();

    final GetPushListResponse res = await ns.requestPushList(
        accessToken: await userRepository.getAccessToken(),
        pushType: pType
    );

    if (res.result.resultCode == ResultCode.SUCCESS) {
      return res.pushList;
    } else {
      throw Exception('error fetching histories');
    }
  }
}
