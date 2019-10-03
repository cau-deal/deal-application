import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:deal/generated/i18n.dart';

import 'package:deal/src/custom/router/fade_router.dart';

import 'package:deal/src/screens/login_email/login_email.dart';
import 'package:deal/src/screens/login_google/login_google.dart';
import 'package:deal/src/screens/register_with_email//register_with_email.dart';

import 'package:deal/src/custom/widgets/white_round_button.dart';

class LoginSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
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
                      child: Image.asset("res/images/splash-logo-acent@2x.png")
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
                            child: Hero(
                              tag: 'parallax_button',
                              child: WhiteRoundButton(
                                onPressed: () {
                                  Navigator.push(ctx, FadeRoute(page:LoginEmailPage()));
                                },
                                buttonColor: Color(0xFF5f75ac),
                                textColor: Colors.white,
                                text: S.of(ctx).login_with_email,
                              ),
                            )
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 7.0),
                          child: WhiteRoundButton(
                            onPressed: () {
                              Navigator.push(
                                  ctx,
                                  MaterialPageRoute(
                                    fullscreenDialog: true, builder:(ctx) => LoginGooglePage()
                                  )
                              );
                            },
                            buttonColor: Color(0xffffffff),
                            assetImage: 'res/images/google-logo.png',
                            text: S.of(ctx).login_with_google,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          child:  RichText(
                              text: TextSpan(
                                text:  S.of(ctx).register,
                                recognizer: new TapGestureRecognizer()..onTap = () {
                                  Navigator.push(ctx, MaterialPageRoute(builder:(ctx) => RegisterWithEmailPage()));
                                },
                                style: TextStyle(
                                    color: Color(0xFF5f75ac),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "NanumSquare"
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              flex: 1,
            ),
          ],
        ),
      )
    );
  }
}