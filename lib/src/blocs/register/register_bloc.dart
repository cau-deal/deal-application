import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:deal/src/custom/modules/validators.dart';
import 'package:deal/src/protos/AuthService.pb.dart';
import 'package:deal/src/protos/CommonResult.pbenum.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import 'bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {

  final UserRepository _userRepository;

  RegisterBloc({
    @required UserRepository userRepository,
  })  : assert(userRepository != null),
        _userRepository = userRepository;

  @override
  RegisterState get initialState => RegisterState.empty();

  @override
  Stream<RegisterState> transformEvents(
      Stream<RegisterEvent> events,
      Stream<RegisterState> Function(RegisterEvent event) next,
      ) {

    final observableStream = events as Observable<RegisterEvent>;
    final nonDebounceStream = observableStream.where((event) {
      return (event is! EmailChanged && event is! PasswordChanged && event is! Password2Changed);
    });

    final debounceStream = observableStream.where((event) {
      return (event is EmailChanged || event is PasswordChanged || event is Password2Changed);
    }).debounceTime(Duration(milliseconds: 300));

    return super.transformEvents(nonDebounceStream.mergeWith([debounceStream]), next);
  }

  @override
  Stream<RegisterState> mapEventToState(
      RegisterEvent event,
      ) async* {
    if (event is EmailChanged) {
      yield* _mapEmailChangedToState(event.email);
    } else if (event is PasswordChanged) {
      yield* _mapPasswordChangedToState(event.password);
    } else if (event is Password2Changed){
      yield* _mapPassword2ChangedToState(event.password1, event.password2);
    } else if (event is AgreementChanged){
      yield* _mapAgreementChangedToState(event.checked);
    } else if (event is Submitted) {
      yield* _mapFormSubmittedToState(event.email, event.password, event.agreeWithTerms);
    }
  }

  Stream<RegisterState> _mapEmailChangedToState(String email) async* {
    yield currentState.update(
      isEmailValid: Validators.isValidEmail(email),
    );
  }

  Stream<RegisterState> _mapPasswordChangedToState(String password) async* {
    yield currentState.update(
      isPasswordValid: Validators.isValidPassword(password),
    );
  }

  Stream<RegisterState> _mapPassword2ChangedToState(String password1, String password2) async* {
    yield currentState.update(
      isSamePassword: Validators.isSamePassword(password1, password2),
    );
  }

  Stream<RegisterState> _mapAgreementChangedToState(bool checked) async* {
    yield currentState.update(
      isAgreeWithTerm: checked
    );
  }

  Stream<RegisterState> _mapFormSubmittedToState(
      String email,
      String password,
      bool agreeWithTerms
      ) async* {

    yield RegisterState.loading();

    try {
      SignUpResponse res = await _userRepository.signUpWithEmail(
        email: email,
        password: password,
        agreeWithTerms: agreeWithTerms
      );

      yield (res.result.resultCode == ResultCode.SUCCESS)
          ? RegisterState.success() : RegisterState.failure();

      print(res);

    } catch (_) {
      yield RegisterState.failure();
    }
  }

}