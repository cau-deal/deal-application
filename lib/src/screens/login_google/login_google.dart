import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'package:flutter_lottie/flutter_lottie.dart';
import 'package:deal/src/custom/widgets/tall_height_app_bar_container.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';


final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn= new GoogleSignIn();

GoogleSignIn _googleSignIn = new GoogleSignIn(
  scopes: <String>[ 'email', 'https://www.googleapis.com/auth/userinfo.email' ],
);

class LoginGooglePage extends StatefulWidget {
  @override
  LoginGooglePageState createState() => new LoginGooglePageState();
}

class LoginGooglePageState extends State<LoginGooglePage> {

  String _user_text = null;

  Future<String> _testSignInWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;

    assert(user.email != null);
    assert(user.displayName != null);
    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    /*final FirebaseUser currentUser = await _auth.currentUser();
    assert(user.uid == currentUser.uid);
    print(currentUser.uid);
    setState(() { _user_text=currentUser.uid; });*/

    return user.email;
  }

  Future<Null> _handleSignOut() async {
    await FirebaseAuth.channel.invokeMethod("signOut");
    final FirebaseUser currentUser = await _auth.currentUser();
    setState(() { _user_text=currentUser.uid; });
  }

  Future<Null> get_uid() async{
    final FirebaseUser currentUser = await _auth.currentUser();
    print(currentUser);
    setState(() { _user_text=currentUser.uid; });
  }


  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration.zero, (){

      _testSignInWithGoogle().then((email){
        Fluttertoast.showToast(
            msg: "${email} 아이디 받아옴",
        );
      }).whenComplete((){
        Navigator.of(context).pop();
      }).catchError((error){
        Fluttertoast.showToast( msg: "[DEAL] Login Failed" );
      });

    });
  }

  @override
  Widget build(BuildContext ctx) {
    return new TallHeightAppBarContainer(
      icon: Icons.close,
        iconSize: 22.0,
        text: S.of(ctx).title_login_with_google,
      child: Container(
        padding: EdgeInsets.only(left: 42, right: 42),
        child: Container(
          color: Colors.white,
          width: 100,
          height: 100,
          child: LottieView.fromFile(
            filePath: 'res/lottie/google-loading.json',
            autoPlay: true,
            loop: true,
            reverse: false,
          )
        )
      )
    );
  }
}