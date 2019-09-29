import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';


class LoginSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage( "res/images/select_bg.png" ),
              fit: BoxFit.cover,
            ),
            color: Colors.black26
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Container(
                    child: Image.asset("res/images/splash-logo@2x.png")
                )
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 7.0),
                        child: WhiteRoundButton(
                          onPressed: () {},
                          buttonColor: Color(0xFF5f75ac),
                          textColor: Colors.white,
                          text: S.of(ctx).login_with_email,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 7.0),
                        child: WhiteRoundButton(
                          onPressed: () {},
                          buttonColor: Color(0xffffffff),
                          assetImage: 'res/images/google-logo.png',
                          text: S.of(ctx).login_with_google,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 24.0),
                        child: new RichText(
                            text: TextSpan(
                              text:  S.of(ctx).register,
                              style: new TextStyle(color: Color(0xFF5f75ac), fontWeight: FontWeight.w600),
                            )
                        )
                      ),
                    ],
                  ),
                )
              ),
              flex: 1,
            ),
          ],
        ),
    );
  }
}