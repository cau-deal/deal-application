import 'package:deal/src/protos/AuthService/AuthService.pbenum.dart';
import 'package:deal/src/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepository {

  final GoogleSignIn _googleSignIn;
  final AuthService _authService;

  UserRepository({GoogleSignIn googleSignIn, AuthService authService})
      : _googleSignIn = googleSignIn ?? GoogleSignIn(),
        _authService = authService ?? AuthService.init();


  Future<AuthCredential> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    return GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
  }

  Future<void> signInWithEmail(String email, String password) {
    // TODO gRPC Service 연동 필요
  }

  Future<void> signUpWithEmail({String email, String password, bool agreeWithTerms}) async {
    return await _authService.signUp(
      email: email,
      password: password,
      agreeWithTerms: agreeWithTerms,
      accountType: AccountType.EMAIL
    );
  }

  Future<void> signOut() async {
    return Future.wait([
      // TODO gRPC Signout 필요
      _googleSignIn.signOut(),
    ]);
  }

  Future<bool> isSignedIn() async {
    return false;
    //final currentUser = await _firebaseAuth.currentUser();
    //return currentUser != null;
  }

  Future<String> getUser() async {
    return "";
    //return (await _firebaseAuth.currentUser()).email;
  }

}