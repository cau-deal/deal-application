import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:deal/src/protos/AccountService.pb.dart';
import 'package:deal/src/protos/CommonResult.pbenum.dart';
import 'package:deal/src/protos/Date.pb.dart';
import 'package:deal/src/protos/PhoneService.pbgrpc.dart';
import 'package:deal/src/protos/UserService.pb.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/services/account_service.dart';
import 'package:deal/src/services/phone_service.dart';

import 'bloc.dart';

enum VerificationType { PHONE, ACCOUNT }

class VerificationBloc extends Bloc<VerificationEvent, VerificationState> {
  final UserRepository userRepository;

  VerificationBloc({this.userRepository}) : assert(userRepository != null);

  @override
  VerificationState get initialState => UnVerified();

  @override
  Stream<VerificationState> mapEventToState(VerificationEvent event) async* {
    if (event is VerificationInitialized) {
      yield* _mapVerifiedInitializedState();
    } else if (event is VerificationFailed) {
      yield* _mapAppStartedToState();
    } else if (event is VerificationRequest) {
      if( event.type == VerificationType.PHONE ) {
        yield* _mapVerifiedPhoneToState(event);
      } else if (event.type == VerificationType.ACCOUNT){
        yield* _mapVerifiedAccountToState(event);
      }
    }
  }

  Stream<VerificationState> _mapVerifiedInitializedState() async* {
    try {
      String accessToken = await userRepository.getAccessToken();

      if (await userRepository.hasToken()) {
        yield Verifying();

        LookUpAuthInfoResponse authRes = await userRepository.lookUpAuthInfo(accessToken: accessToken);
        LookUpUserInfoResponse userRes = await userRepository.lookUpUserInfo(accessToken: accessToken);

        bool isPhoneAuth = authRes.authInfo.isPhoneAuth == IsAuth.TRUE_IS_AUTH;
        bool isAccountAuth = authRes.authInfo.isAccountAuth == IsAuth.TRUE_IS_AUTH;

        if (userRes.result.resultCode != ResultCode.SUCCESS) {
          yield UnVerified(userEmail: '');
        }

        Profile profile = userRes.profile;

        if (authRes.result.resultCode == ResultCode.SUCCESS) {
          if (isPhoneAuth) {
            yield Verified(accountVerified: isAccountAuth, phoneVerified: isPhoneAuth, profile: profile);
          } else if (isAccountAuth) {
            yield Verified(accountVerified: isAccountAuth, phoneVerified: isPhoneAuth, profile: Profile()..name = "회원");
          } else {
            yield UnVerified(userEmail: profile.email);
          }
        } else {
          yield UnVerified(userEmail: profile.email);
        }
      } else {
        yield UnVerified(userEmail: '');
      }
    } catch (_) {
      yield UnVerified(userEmail: '');
    }
  }

  Stream<VerificationState> _mapAppStartedToState() async* {
    try {
      String accessToken = await userRepository.getAccessToken();

      if (await userRepository.hasToken()) {
        yield Verifying();
        LookUpUserInfoResponse userRes = await userRepository.lookUpUserInfo(accessToken: accessToken);
        yield UnVerified(userEmail: (userRes.result.resultCode == ResultCode.SUCCESS) ? userRes.profile.email : "");
      } else {
        yield UnVerified();
      }
    } catch (e) {
      yield UnVerified();
    }
  }

  Stream<VerificationState> _mapVerifiedPhoneToState(VerificationRequest event) async* {
    try {
      yield Verifying();

      PhoneService _phoneService = await PhoneService.init();
      String accessToken = await userRepository.getAccessToken();

      String jsonData = event.data;

      var result = jsonDecode(jsonData);

      if (await userRepository.hasToken()) {
        MobileCarrier carrier = MobileCarrier.UNKNOWN_MOBILE_CARRIER;
        switch (result['carrier']) {
          case "KTF":
            {
              carrier = MobileCarrier.KTF;
            }
            break;
          case "SKT":
            {
              carrier = MobileCarrier.SKT;
            }
            break;
          case "LGU":
            {
              carrier = MobileCarrier.LGU;
            }
            break;
          case "KTR":
            {
              carrier = MobileCarrier.KTR;
            }
            break;
          case "SKR":
            {
              carrier = MobileCarrier.SKR;
            }
            break;
          case "LGR":
            {
              carrier = MobileCarrier.LGR;
            }
            break;
          default:
            {
              carrier = MobileCarrier.UNKNOWN_MOBILE_CARRIER;
            }
        }

        PhoneAuthResponse res = await _phoneService.authenticateWithPhone(
            accessToken: accessToken,
            phoneNumber: result['phone'],
            name: result['name'],
            isNative: true,
            gender: result['sex'] == 'M' ? Sex.MALE : Sex.FEMALE,
            carrier: carrier,
            birthDay: Date()
              ..year = result['birth1']
              ..month = result['birth2']
              ..day = result['birth3']);

        yield* _mapVerifiedInitializedState();

      } else {
        yield UnVerified();
      }
    } catch (_) {
      print(_.toString());
      yield UnVerified();
    }
  }

  Stream<VerificationState> _mapVerifiedAccountToState(VerificationRequest event) async* {
    try {
      yield Verifying();

      AccountService _accountService = await AccountService.init();
      String accessToken = await userRepository.getAccessToken();

      String jsonData = event.data;

      var result = jsonDecode(jsonData);

      if (await userRepository.hasToken()) {
        BANK bank = BANK.UNKNOWN_BANK;
        switch (result['bank']) {
          case "NH농협은행":
            {
              bank = BANK.NH;
            }
            break;
          case "IBK기업은행":
            {
              bank = BANK.IBK;
            }
            break;
          case "KB국민은행":
            {
              bank = BANK.KB;
            }
            break;
          case "카카오뱅크":
            {
              bank = BANK.KAKAO;
            }
            break;
          case "우리은행":
            {
              bank = BANK.WOORI;
            }
            break;
          default:
            {
              bank = BANK.UNKNOWN_BANK;
            }
        }

        await _accountService.authenticateWithAccount(
          accessToken: accessToken,
          bank: bank,
          account: result['accnum'],
          owner: result['owner']
        );

        yield* _mapVerifiedInitializedState();

      } else {
        yield UnVerified();
      }
    } catch (_) {
      print(_.toString());
      yield UnVerified();
    }
  }
}
