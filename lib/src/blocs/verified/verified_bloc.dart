import 'dart:async';
import 'dart:convert';

import 'package:deal/src/protos/CommonResult.pbenum.dart';
import 'package:deal/src/protos/PhoneService.pbgrpc.dart';
import 'package:deal/src/repositories/user_repository.dart';

import 'package:bloc/bloc.dart';
import 'package:deal/src/services/phone_service.dart';
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
      yield* _mapVerifiedPhoneToState(event);
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

  Stream<VerificationState> _mapVerifiedPhoneToState(VerificationSuccess event) async* {
    try {
      // todo make verifying state (로딩 스테이트)
      // 인증시키고 (PhoneService)
      // userService에서 인증정보 가져다가 PhoneVerified State로 전환

      yield Verifying();

      PhoneService _phoneService = await PhoneService.init();
      SharedPreferences preferences = await SharedPreferences.getInstance();

      String accessToken = preferences.getString('ticket')?? "";
      String jsonData = event.data;

      var result = jsonDecode(jsonData);

      if(accessToken != "") {
        PhoneAuthResponse res = await _phoneService.authenticateWithPhone(
          accessToken: accessToken,
          phoneNumber: result['phone'],
          name: result['name'],
          isNative: true,
          gender: result['sex'] == 'M'? Sex.MALE : Sex.FEMALE,
          carrier: MobileCarrier.KTF,
        );

        if( res?.result?.resultCode == ResultCode.SUCCESS ){
          yield PhoneVerified();
        }

      }

      yield UnVerified();

    } catch (_) {
      yield UnVerified();
    }
  }


}