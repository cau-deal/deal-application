import 'dart:async';
import 'dart:convert';

import 'package:deal/src/blocs/auth/auth_bloc.dart';
import 'package:deal/src/protos/CommonResult.pbenum.dart';
import 'package:deal/src/protos/Date.pb.dart';
import 'package:deal/src/protos/PhoneService.pbgrpc.dart';
import 'package:deal/src/protos/UserService.pb.dart';
import 'package:deal/src/repositories/user_repository.dart';

import 'package:bloc/bloc.dart';
import 'package:deal/src/services/phone_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'bloc.dart';

enum VerificationType {
  PHONE, ACCOUNT
}

class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {

  final UserRepository userRepository;

  VerificationBloc({ this.userRepository })
      : assert(userRepository != null);

  @override
  VerificationState get initialState => UnVerified();

  @override
  Stream<VerificationState> mapEventToState(VerificationEvent event) async* {
    if (event is VerificationInitialized) {
      yield* _mapVerifiedInitializedState();
    } else if (event is VerificationFailed) {
      yield* _mapAppStartedToState();
    } else if (event is VerificationSuccess){
      yield* _mapVerifiedPhoneToState(event);
    }
  }

  Stream<VerificationState> _mapVerifiedInitializedState() async* {

    try {

      String accessToken = await userRepository.getAccessToken();

      if( await userRepository.hasToken() ) {

        yield Verifying();

        LookUpAuthInfoResponse authRes = await userRepository.lookUpAuthInfo(accessToken: accessToken);
        LookUpUserInfoResponse userRes = await userRepository.lookUpUserInfo(accessToken: accessToken);

        bool isPhoneAuth = authRes.authInfo.isPhoneAuth == IsAuth.TRUE_IS_AUTH;
        bool isAccountAuth = authRes.authInfo.isAccountAuth == IsAuth.TRUE_IS_AUTH;

        if(userRes.result.resultCode != ResultCode.SUCCESS){
          yield UnVerified( userEmail: '' );
        }

        Profile profile = userRes.profile;

        if (authRes.result.resultCode == ResultCode.SUCCESS) {

          if( isPhoneAuth ){
            yield Verified(
                accountVerified: isAccountAuth,
                phoneVerified: isPhoneAuth,
                profile: profile
            );
          } else if ( isAccountAuth ){
            yield Verified(
                accountVerified: isAccountAuth,
                phoneVerified: isPhoneAuth,
                profile: Profile()..name="회원"
            );
          } else {
            yield UnVerified( userEmail: profile.email );
          }

        } else {
          yield UnVerified( userEmail: profile.email );
        }

      } else {
        yield UnVerified( userEmail: '' );
      }

    } catch (_) {
      yield UnVerified( userEmail: '' );
    }
  }

  Stream<VerificationState> _mapAppStartedToState() async* {
    try {

      String accessToken = await userRepository.getAccessToken();

      if( await userRepository.hasToken() ) {
        yield Verifying();
        LookUpUserInfoResponse userRes = await userRepository.lookUpUserInfo(accessToken: accessToken);
        yield UnVerified(userEmail: (userRes.result.resultCode == ResultCode.SUCCESS)? userRes.profile.email : "");
      } else {
        yield UnVerified();
      }

    } catch(e) {
      yield UnVerified();
    }
  }

  Stream<VerificationState> _mapVerifiedPhoneToState(VerificationSuccess event) async* {
    try {
      yield Verifying();

      PhoneService _phoneService = await PhoneService.init();
      String accessToken = await userRepository.getAccessToken();

      String jsonData = event.data;

      var result = jsonDecode(jsonData);

      if(await userRepository.hasToken()) {

        MobileCarrier carrier = MobileCarrier.UNKNOWN_MOBILE_CARRIER;
        switch(result['carrier']){
          case "KTF": { carrier = MobileCarrier.KTF; } break;
          case "SKT": { carrier = MobileCarrier.SKT; } break;
          case "LGU": { carrier = MobileCarrier.LGU; } break;
          case "KTR": { carrier = MobileCarrier.KTR; } break;
          case "SKR": { carrier = MobileCarrier.SKR; } break;
          case "LGR": { carrier = MobileCarrier.LGR; } break;
          default: { carrier = MobileCarrier.UNKNOWN_MOBILE_CARRIER; }
        }

        PhoneAuthResponse res = await _phoneService.authenticateWithPhone(
          accessToken: accessToken,
          phoneNumber: result['phone'],
          name: result['name'],
          isNative: true,
          gender: result['sex'] == 'M'? Sex.MALE : Sex.FEMALE,
          carrier: carrier,
          birthDay: Date()..year=result['birth1']..month=result['birth2']..day=result['birth3']
        );

        if( res?.result?.resultCode == ResultCode.SUCCESS ){
          yield* _mapVerifiedInitializedState();
        } else {
          yield UnVerified();
        }

      } else {
        yield UnVerified();
      }

    } catch (_) {
      print(_.toString());
      yield UnVerified();
    }
  }


}