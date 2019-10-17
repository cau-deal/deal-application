import 'package:deal/src/protos/AuthService.pb.dart';
import 'package:deal/src/protos/AuthService.pbenum.dart';
import 'package:deal/src/protos/UserService.pbgrpc.dart';
import 'package:deal/src/services/auth_service.dart';
import 'package:deal/src/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepository {

  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;
  final AuthService _authService;
  final UserService _userService;

  UserRepository({
    GoogleSignIn googleSignIn,
    AuthService authService,
    UserService userService,
    FirebaseAuth firebaseAuth
  }) : _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _firebaseAuth = FirebaseAuth.instance,
        _authService = authService ?? AuthService.init(),
        _userService = userService ?? UserService.init();


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

    return _authService.signInWithGoogle(
      email: user.email,
      password: user.uid,
      profileImageUrl: user.photoUrl
    );
  }

  Future<SignInResponse> signInWithEmail(String email, String password) async {
    return await _authService.signInWithCredential(
      email: email,
      password: password,
    );
  }

  Future<SignUpResponse> signUpWithEmail({String email, String password, bool agreeWithTerms}) async {
    return await _authService.signUp(
      email: email,
      password: password,
      agreeWithTerms: agreeWithTerms,
      accountType: AccountType.EMAIL
    );
  }

  Future<FindPasswordResponse> findPassword({String email}) async {
    return await _authService.findPassword(email: email);
  }

  Future<SignInResponse> signInWithToken({String accessToken}) async {
    return await _authService.signInWithToken(accessToken: accessToken);
  }

  Future<void> signOut() async {
    return Future.wait([
      // TODO gRPC Signout 필요
      _googleSignIn.signOut(),
    ]);
  }

  Future<LookUpAuthInfoResponse> lookUpAuthInfo({String accessToken}) async {
    return await _userService.lookUpUserAuthInfo(accessToken: accessToken);
  }

  Future<bool> isSignedIn() async {
    return false;
    //final currentUser = await _firebaseAuth.currentUser();
    //return currentUser != null;
  }

}