import 'package:flutter/material.dart';

class NoResultScreen extends StatefulWidget {
  @override
  NoResultScreenState createState() {
    return NoResultScreenState();
  }
}

class NoResultScreenState extends State<NoResultScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Container(
        color: Colors.white,
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
                    "기록이 없습니다.",
                    style: TextStyle(color: Color(0xff909090), fontFamily: "NanumSquare", fontSize: 16, letterSpacing: -0.5, height: 1.5),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
        )
    );
  }
}
