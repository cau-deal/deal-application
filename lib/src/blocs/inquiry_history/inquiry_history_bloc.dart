import 'package:bloc/bloc.dart';
import 'package:deal/src/blocs/inquiry_history/bloc.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/protos/DealService.pbgrpc.dart';
import 'package:deal/src/repositories/deal_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:rxdart/rxdart.dart';

class InquiryHistoryBloc extends Bloc<InquiryHistoryEvent, InquiryHistoryState> {
  final DealRepository dealRepository;
  final UserRepository userRepository;

  InquiryHistoryBloc({this.dealRepository, this.userRepository});

  @override
  Stream<InquiryHistoryState> transformEvents(
    Stream<InquiryHistoryEvent> events,
    Stream<InquiryHistoryState> Function(InquiryHistoryEvent event) next,
  ) {
    return super.transformEvents(
      (events as Observable<InquiryHistoryEvent>).debounceTime(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }

  @override
  get initialState => InquiryUninitialized();

  @override
  Stream<InquiryHistoryState> mapEventToState(event) async* {
    if (event is Fetch && !_hasReachedMax(state)) {
      try {
        if (state is InquiryUninitialized) {
          final inquiries = await _fetchHistory(0, 20);
          yield InquiryLoaded(inquiries: inquiries, hasReachedMax: true);
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
        yield InquiryError();
      }
    }
  }

  bool _hasReachedMax(InquiryHistoryState state) => state is InquiryLoaded && state.hasReachedMax;

  Future<List<InquiryWithAnswer>> _fetchHistory(int startIndex, int limit) async {
    final LookUpInquiryResponse res = await dealRepository.fetchInquiryHistory(await userRepository.getAccessToken());

    if (res.result.resultCode == ResultCode.SUCCESS) {
      return res.inquiries;
    } else {
      print(res.result.message);
      throw Exception('error fetching posts');
    }
  }
}
