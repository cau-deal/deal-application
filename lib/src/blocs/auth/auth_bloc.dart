import 'dart:async';

import 'package:deal/src/protos/AuthService/AuthService.pb.dart';
import 'package:deal/src/protos/AuthService/CommonResult.pb.dart';
import 'package:deal/src/repositories/user_repository.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bloc.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository _userRepository;
  final SharedPreferences _sharedPreferences;


  AuthenticationBloc({
    @required UserRepository userRepository,
    @required SharedPreferences sharedPreferences
  }) : assert(userRepository != null),
        _sharedPreferences = sharedPreferences,
        _userRepository = userRepository;

  @override
  AuthenticationState get initialState => Uninitialized();


  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
    if (event is AppStarted) {
      yield* _mapAppStartedToState();
    } else if (event is LoggedIn) {
      yield* _mapLoggedInToState();
    } else if (event is LoggedOut) {
      yield* _mapLoggedOutToState();
    }
  }

  Stream<AuthenticationState> _mapAppStartedToState() async* {
    try {

      String accessToken = _sharedPreferences.getString("ticket") ?? "";
      String aud = _sharedPreferences.get("aud") ?? "";
      bool isValid = false;

      if(accessToken != "" && aud != "") {
        yield Authenticating();
        SignInResponse res = await _userRepository.signInWithToken(accessToken: accessToken, aud: aud);
        isValid = res?.result?.resultCode == ResultCode.SUCCESS;
      }

      if (isValid) {
        yield Authenticated("");

      } else {
        yield Unauthenticated();
      }

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

  Stream<AuthenticationState> _mapLoggedInToState() async* {
    yield Authenticated(await _userRepository.getUser());
  }

  Stream<AuthenticationState> _mapLoggedOutToState() async* {
    _userRepository.signOut();
    yield Unauthenticated();
  }

}