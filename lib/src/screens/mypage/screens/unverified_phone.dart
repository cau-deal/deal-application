import 'package:deal/generated/i18n.dart';
import 'package:deal/src/screens/mypage/screens/unverified_phone_auth.dart';
import 'package:flutter/material.dart';

class UnverifiedPage extends StatefulWidget {
  @override
  UnverifiedPageState createState() {
    return UnverifiedPageState();
  }
}

class UnverifiedPageState extends State<UnverifiedPage> {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      alignment: Alignment.center,
      child: GestureDetector(
        child: Center(
            child: SizedBox(
              width: double.infinity,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("res/images/logo-grey.png", height: 150),
                  SizedBox(height: 20),
                  Text(
                    S.of(ctx).prompt_phone_auth,
                    style: TextStyle(color: Color(0xff909090), fontFamily: "NanumSquare", fontSize: 16, letterSpacing: -0.5, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    S.of(ctx).prompt_phone_auth_button,
                    style: TextStyle(color: Color(0xff000000), fontFamily: "NanumSquare", fontSize: 14, letterSpacing: -0.5, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
        ),
        onTap: () {
          Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => UnverifiedPhoneAuthPage(), fullscreenDialog: true));
        },
      ),
      color: Colors.white,
    );
  }
}
