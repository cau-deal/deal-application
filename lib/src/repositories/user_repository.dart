import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepository {

  final GoogleSignIn _googleSignIn;

  UserRepository({GoogleSignIn googleSignin})
      : _googleSignIn = googleSignin ?? GoogleSignIn();


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

  Future<void> signUp({String email, String password}) async {
    // TODO gRPC Service 연동 필요
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