import 'package:deal/src/screens/mypage/screens/verify_account_auth.dart';
import 'package:flutter/material.dart';

class UnverifiedAccountPage extends StatefulWidget {
  @override
  UnverifiedAccountPageState createState() => UnverifiedAccountPageState();
}

class UnverifiedAccountPageState extends State<UnverifiedAccountPage> {

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
                Image.asset("res/images/logo-grey-won.png", height: 150),
                SizedBox(height: 20),
                Text(
                  "포인트 조회를 위해서는\n계좌 연동이 필요합니다.",
                  style: TextStyle(color: Color(0xff909090), fontFamily: "NanumSquare", fontSize: 16, letterSpacing: -0.5, height: 1.5),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  "( 여기를 눌러 계좌연동을 진행해주세요 )",
                  style: TextStyle(color: Color(0xff000000), fontFamily: "NanumSquare", fontSize: 14, letterSpacing: -0.5, height: 1.5),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
         )
        ),
        onTap: () {
          Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => VerifyAccountPage(), fullscreenDialog: true));
        },
      ),
      color: Colors.white,
    );
  }

}
