import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:deal/src/blocs/auth/auth_bloc.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/custom/modules/validators.dart';
import 'package:deal/src/protos/AuthService.pb.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

import 'bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({@required this.userRepository, @required this.authenticationBloc})
      : assert(userRepository != null),
        assert(authenticationBloc != null);

  @override
  LoginState get initialState => LoginState.empty();

  @override
  Stream<LoginState> transformEvents(
    Stream<LoginEvent> events,
    Stream<LoginState> Function(LoginEvent event) next,
  ) {
    final observableStream = events as Observable<LoginEvent>;
    final nonDebounceStream = observableStream.where((event) {
      return (event is! EmailChanged && event is! PasswordChanged);
    });
    final debounceStream = observableStream.where((event) {
      return (event is EmailChanged || event is PasswordChanged);
    }).debounceTime(Duration(milliseconds: 300));

    return super.transformEvents(nonDebounceStream.mergeWith([debounceStream]), next);
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is EmailChanged) {
      yield* _mapEmailChangedToState(event.email);
    } else if (event is PasswordChanged) {
      yield* _mapPasswordChangedToState(event.password);
    } else if (event is LoginWithGooglePressed) {
      yield* _mapLoginWithGooglePressedToState();
    } else if (event is FindPasswordPressed) {
      yield* _mapFindPasswordPressedToState(email: event.email);
    } else if (event is LoginWithCredentialsPressed) {
      yield* _mapLoginWithCredentialsPressedToState(
        email: event.email,
        password: event.password,
      );
    }
  }

  Stream<LoginState> _mapEmailChangedToState(String email) async* {
    yield state.update(
      isEmailValid: Validators.isValidEmail(email),
    );
  }

  Stream<LoginState> _mapPasswordChangedToState(String password) async* {
    yield state.update(
      isPasswordValid: Validators.isValidPassword(password),
    );
  }

  Stream<LoginState> _mapLoginWithGooglePressedToState() async* {
    try {
      SignInResponse res = await userRepository.signInWithGoogle();

      if (res.result.resultCode == ResultCode.SUCCESS) {
        String accessToken = res.jwt[0].token;
        authenticationBloc.add(LoggedIn(token: accessToken));
      }

      yield (res.result.resultCode == ResultCode.SUCCESS) ? LoginState.success() : LoginState.failure();
    } catch (_) {
      yield LoginState.failure();
    }
  }

  Stream<LoginState> _mapFindPasswordPressedToState({String email}) async* {
    try {
      yield LoginState.loading();

      await userRepository.findPassword(email: email);
      yield LoginState.failure(); // 무조건 실패처리한다. (로그인 되면 안됨)

    } catch (_) {
      yield LoginState.failure();
    }
  }

  Stream<LoginState> _mapLoginWithCredentialsPressedToState({
    String email,
    String password,
  }) async* {
    yield LoginState.loading();

    try {
      SignInResponse res = await userRepository.signInWithEmail(email, password);

      if (res.result.resultCode == ResultCode.SUCCESS) {
        String accessToken = res.jwt[0].token;
        authenticationBloc.add(LoggedIn(token: accessToken));
      }

      yield (res.result.resultCode == ResultCode.SUCCESS) ? LoginState.success() : LoginState.failure();
    } catch (_) {
      yield LoginState.failure();
    }
  }
}
