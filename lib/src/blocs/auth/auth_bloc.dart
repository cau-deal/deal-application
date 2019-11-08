import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:deal/src/blocs/auth/bloc.dart' as prefix0;
import 'package:deal/src/blocs/verified/bloc.dart';
import 'package:deal/src/protos/AuthService.pb.dart';
import 'package:deal/src/protos/CommonResult.pb.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:meta/meta.dart';

import 'bloc.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository _userRepository;
  final VerificationBloc _verificationBloc;

  AuthenticationBloc({
    @required UserRepository userRepository,
    @required VerificationBloc verificationBloc
  })
      : assert(userRepository != null),
        _userRepository = userRepository,
        _verificationBloc = verificationBloc;

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
    } else if (event is prefix0.VerificationRequest){
      yield* _mapVerificationRequestToState();
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

      if(isValid){ _verificationBloc.add(VerificationInitialized()); }

      yield (isValid) ? Authenticated(accessToken: accessToken) : Unauthenticated();

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
    _verificationBloc.add(VerificationInitialized());
    yield Authenticated(accessToken: token);
  }

  Stream<AuthenticationState> _mapLoggedOutToState() async* {
    yield Authenticating();
    await _userRepository.signOut();
    _verificationBloc.add(VerificationInitialized());
    yield Unauthenticated();
  }

  Stream<AuthenticationState> _mapVerificationRequestToState() async* {
    yield Authenticating();
    await _userRepository.signOut();
    _verificationBloc.add(VerificationInitialized());
    yield Unauthenticated();
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
