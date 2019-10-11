import 'dart:async';

import 'package:deal/src/repositories/user_repository.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bloc.dart';

enum VerificationType {
  PHONE, ACCOUNT
}

class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {

  @override
  VerificationState get initialState => UnVerified();

  @override
  Stream<VerificationState> mapEventToState(VerificationEvent event) async* {
    if (event is VerificationInitialized) {
      yield* _mapAppStartedToState();
    } else if (event is VerificationFailed) {
      yield* _mapAppStartedToState();
    } else if (event is VerificationSuccess){
      yield* _mapVerifiedPhoneToState();
    }
  }

  Stream<VerificationState> _mapAppStartedToState() async* {
    try {

      //String accessToken = _sharedPreferences.getString("ticket") ?? "";
      //String aud = _sharedPreferences.get("aud") ?? "";
      //bool isValid = false;

      //await _userRepository.signInWithToken(accessToken: accessToken, aud: aud);

      yield UnVerified();

    } catch (_) {
      yield UnVerified();
    }
  }

  Stream<VerificationState> _mapVerifiedPhoneToState() async* {
    try {
      // todo make verifying state (로딩 스테이트)
      // 인증시키고 (PhoneService)
      // userService에서 인증정보 가져다가 PhoneVerified State로 전환
      yield PhoneVerified();
    } catch (_) {
      yield UnVerified();
    }
  }


}