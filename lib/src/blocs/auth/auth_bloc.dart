import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/protos/AuthService.pb.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/protos/UserService.pb.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:meta/meta.dart';

import 'bloc.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository _userRepository;

  AuthenticationBloc({
    @required UserRepository userRepository,
  })
      : assert(userRepository != null),
        _userRepository = userRepository;

  @override
  AuthenticationState get initialState => Uninitialized();

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    if (event is AuthInitialized) {
      yield* _mapAppStartedToState();
    } else if (event is LoggedIn) {
      yield* _mapLoggedInToState(token: event.token);
    } else if (event is LoggedOut) {
      yield* _mapLoggedOutToState();
    } else if (event is VerificationRequest){
      yield* _mapVerificationRequestToState(event);
    }
  }

  Stream<AuthenticationState> _mapAppStartedToState() async* {
    try {
      String accessToken = await _userRepository.getAccessToken();
      bool isValid = false;

      if (await _userRepository.hasToken()) {
        yield Authenticating();
        SignInResponse res = await _userRepository.signInWithToken(accessToken: accessToken);
        isValid = res?.result?.resultCode == ResultCode.SUCCESS;
      }

      if(isValid){
        LookUpAuthInfoResponse authRes = await _userRepository.lookUpAuthInfo(accessToken: accessToken);
        LookUpUserInfoResponse userRes = await _userRepository.lookUpUserInfo(accessToken: accessToken);

        bool isPhoneAuth = authRes.authInfo.isPhoneAuth == IsAuth.TRUE_IS_AUTH;
        bool isAccountAuth = authRes.authInfo.isAccountAuth == IsAuth.TRUE_IS_AUTH;
//        Profile profile = (userRes.result.resultCode == ResultCode.SUCCESS && isPhoneAuth) ? userRes.profile : Profile()..name="회원"..email=userRes.profile.email;

        yield Authenticated(
          accessToken: accessToken,
          profile: userRes.profile,
          isPhoneAuth: isPhoneAuth,
          isAccountAuth: isAccountAuth,
        );

      } else {
        yield Unauthenticated();
      }

    } catch (_) {
      yield Unauthenticated();
    }
  }

  Stream<AuthenticationState> _mapLoggedInToState({String token}) async* {
    yield Authenticating();
    await _userRepository.persistToken(token);
    yield* _mapAppStartedToState();
//    yield Authenticated(accessToken: token);
  }

  Stream<AuthenticationState> _mapLoggedOutToState() async* {
    yield Authenticating();
    await _userRepository.signOut();
    yield* _mapAppStartedToState();
  }

  Stream<AuthenticationState> _mapVerificationRequestToState(VerificationRequest evt) async* {
    yield Authenticating();

    switch(evt.type){
      case VerificationType.PHONE : {
        await _userRepository.authenticateWithPhone(
            accessToken: await _userRepository.getAccessToken(),
            jsonData: evt.data
        );
      } break;

      case VerificationType.ACCOUNT : {
        await _userRepository.authenticateWithAccount(
            accessToken: await _userRepository.getAccessToken(),
            jsonData: evt.data
        );
      } break;
    }

    yield* _mapAppStartedToState();
  }

}
