import 'package:flutter/material.dart';

class ExceptionScreen extends StatefulWidget {
  @override
  ExceptionScreenState createState() {
    return ExceptionScreenState();
  }
}



class ExceptionScreenState extends State<ExceptionScreen> {
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
                    "권한이 없습니다.",
                    style: TextStyle(color: Color(0xff909090), fontFamily: "NanumSquare", fontSize: 16, letterSpacing: -0.5, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "(여기를 눌러 뒤로 이동해주세요.)",
                    style: TextStyle(color: Color(0xff000000), fontFamily: "NanumSquare", fontSize: 14, letterSpacing: -0.5, height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
        ),
        onTap: () {
          Navigator.of(ctx).pop();
        },
      ),
      color: Colors.white,
    );
  }
}
