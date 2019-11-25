import 'dart:convert';

import 'package:deal/src/protos/AccountService.pb.dart';
import 'package:deal/src/protos/AuthService.pb.dart';
import 'package:deal/src/protos/AuthService.pbenum.dart';
import 'package:deal/src/protos/CommonResult.pbenum.dart';
import 'package:deal/src/protos/Date.pb.dart';
import 'package:deal/src/protos/PhoneService.pb.dart';
import 'package:deal/src/protos/UserService.pbgrpc.dart';
import 'package:deal/src/services/account_service.dart';
import 'package:deal/src/services/auth_service.dart';
import 'package:deal/src/services/phone_service.dart';
import 'package:deal/src/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository {
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;
  final AuthService _authService;
  final UserService _userService;
  final PhoneService _phoneService;
  final AccountService _accountService;


  UserRepository({
    GoogleSignIn googleSignIn,
    AuthService authService,
    UserService userService,
    PhoneService phoneService,
    AccountService accountService,
    FirebaseAuth firebaseAuth
  }) : _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _firebaseAuth = FirebaseAuth.instance,
        _authService = authService ?? AuthService.init(),
        _userService = userService ?? UserService.init(),
        _phoneService = phoneService ?? PhoneService.init(),
        _accountService = accountService ?? AccountService.init();

  Future<SignInResponse> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = (await _firebaseAuth.signInWithCredential(credential)).user;

    assert(user.email != null);
    assert(!user.isAnonymous);

    return _authService.signInWithGoogle(email: user.email, password: user.uid, profileImageUrl: user.photoUrl);
  }

  Future<SignInResponse> signInWithEmail(String email, String password) async {
    return await _authService.signInWithCredential(
      email: email,
      password: password,
    );
  }

  Future<SignUpResponse> signUpWithEmail({String email, String password, bool agreeWithTerms}) async {
    return await _authService.signUp(email: email, password: password, agreeWithTerms: agreeWithTerms, accountType: AccountType.EMAIL);
  }

  Future<FindPasswordResponse> findPassword({String email}) async {
    return await _authService.findPassword(email: email);
  }

  Future<SignInResponse> signInWithToken({String accessToken}) async {
    return await _authService.signInWithToken(accessToken: accessToken);
  }

  Future<LookUpAuthInfoResponse> lookUpAuthInfo({String accessToken}) async {
    return await _userService.lookUpUserAuthInfo(accessToken: accessToken);
  }

  Future<LookUpUserInfoResponse> lookUpUserInfo({String accessToken}) async {
    return await _userService.lookUpUserProfileInfo(accessToken: accessToken);
  }

  Future<bool> authenticateWithPhone({String accessToken, String jsonData}) async {

    var result = jsonDecode(jsonData);

    if ( accessToken.isNotEmpty ) {
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
            ..day = result['birth3']
      );

      return res.result.resultCode == ResultCode.SUCCESS;

    }

    return false;
  }

  Future<bool> authenticateWithAccount({String accessToken, String jsonData}) async {

    var result = jsonDecode(jsonData);

    if (accessToken.isNotEmpty) {
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

      AccountAuthResponse res = await _accountService.authenticateWithAccount(
          accessToken: accessToken,
          bank: bank,
          account: result['accnum'],
          owner: result['owner']
      );

      return res.result.resultCode == ResultCode.SUCCESS && res.accountAuthResult == AccountAuthResult.SUCCESS_ACCOUNT_AUTH_RESULT;
    }

    return false;
  }

  Future<String> getAccessToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('ticket') ?? "";
  }

  Future<bool> hasToken() async {
    return await getAccessToken() != "";
  }

  Future<void> persistToken(String token) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("ticket", token);
    return;
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove("ticket");
    return;
  }

}
