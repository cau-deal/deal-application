import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/protos/AuthService.pb.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/custom/modules/validators.dart';
import 'package:deal/src/protos/DealService.pb.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/services/deal_service.dart';
import 'package:rxdart/rxdart.dart';

import 'bloc.dart';

class InquiryBloc extends Bloc<InquiryEvent, InquiryState> {

  final UserRepository userRepository;

  InquiryBloc(this.userRepository);

  @override
  InquiryState get initialState => InquiryState.empty();

  @override
  Stream<InquiryState> transformEvents(
      Stream<InquiryEvent> events,
      Stream<InquiryState> Function(InquiryEvent event) next,
      ) {

    final observableStream = events as Observable<InquiryEvent>;
    final nonDebounceStream = observableStream.where((event) {
      return (event is! TitleChanged && event is! ContentChanged);
    });
    final debounceStream = observableStream.where((event) {
      return (event is TitleChanged || event is ContentChanged);
    }).debounceTime(Duration(milliseconds: 300));

    return super.transformEvents(nonDebounceStream.mergeWith([debounceStream]), next);
  }

  @override
  Stream<InquiryState> mapEventToState(InquiryEvent event) async* {

    if (event is TitleChanged) {
      yield* _mapTitleChangedToState(event.title);

    } else if (event is ContentChanged) {
      yield* _mapContentChangedToState(event.contents);

    } else if (event is Submitted) {
      yield* _mapSubmittedToState(
        title: event.title,
        content: event.contents,
      );
    }
  }

  Stream<InquiryState> _mapTitleChangedToState(String title) async* {
    yield currentState.update(
      isEmailValid: title.isNotEmpty,
    );
  }

  Stream<InquiryState> _mapContentChangedToState(String content) async* {
    yield currentState.update(
      isPasswordValid: content.isNotEmpty,
    );
  }


  Stream<InquiryState> _mapSubmittedToState({
    String title, String content,
  }) async* {

    yield InquiryState.loading();

    try {

      DealService _dealService = await DealService.init();

      InquiryResponse res = await _dealService.requestQuestion(
        accessToken: await userRepository.getAccessToken(),
        title: title,
        content: content,
        category: InquiryCategory.ETC_INQUIRY
      );

      if(res.result.resultCode == ResultCode.SUCCESS) {
        yield InquiryState.success();
      } else {
        yield InquiryState.failure();
      }

    } catch (_) {
      yield InquiryState.failure();
    }

  }

}