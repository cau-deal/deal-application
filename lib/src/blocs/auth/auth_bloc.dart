import 'dart:async';

import 'package:deal/src/protos/AuthService.pb.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/repositories/user_repository.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bloc.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository _userRepository;

  AuthenticationBloc({
    @required UserRepository userRepository
  }) : assert(userRepository != null), _userRepository = userRepository;

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
    }
  }

  Stream<AuthenticationState> _mapAppStartedToState() async* {
    try {

      String accessToken = await _userRepository.getAccessToken();
      bool isValid = false;

      if(await _userRepository.hasToken()) {
        yield Authenticating();
        SignInResponse res = await _userRepository.signInWithToken(accessToken: accessToken);
        isValid = res?.result?.resultCode == ResultCode.SUCCESS;
      }

      yield (isValid)? Authenticated(accessToken: accessToken) : Unauthenticated();

      //      final PendingDynamicLinkData data = await FirebaseDynamicLinks.instance.getInitialLink();
//
//      if (deepLink != null) {
//        Navigator.pushNamedAndRemoveUntil(context, deepLink.path,  (Route<dynamic> route) => false);
//      }
//
//      FirebaseDynamicLinks.instance.onLink(
//          onSuccess: (PendingDynamicLinkData dynamicLink) async {
//            final Uri deepLink = dynamicLink?.link;
//            if (deepLink != null) {
//              Navigator.pushNamedAndRemoveUntil(context, deepLink.path,  (Route<dynamic> route) => false);
//            }
//          },
//          onError: (OnLinkErrorException e) async {
//            throw e;
//          }
//      );

    } catch (_) {
      yield Unauthenticated();
    }
  }

  Stream<AuthenticationState> _mapLoggedInToState({String token}) async* {
    yield Authenticating();
    await _userRepository.persistToken(token);
    yield Authenticated(accessToken: token);
  }

  Stream<AuthenticationState> _mapLoggedOutToState() async* {
    yield Authenticating();
    _userRepository.signOut();
    yield Unauthenticated();
  }

}