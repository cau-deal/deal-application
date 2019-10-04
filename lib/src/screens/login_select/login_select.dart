import 'package:deal/src/blocs/login/bloc.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/login_select/widgets/intro_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:deal/generated/i18n.dart';

import 'package:deal/src/custom/router/fade_router.dart';

import 'package:deal/src/screens/login_email/login_email.dart';
import 'package:deal/src/screens/login_google/login_google.dart';
import 'package:deal/src/screens/register_with_email//register_with_email.dart';

import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginSelectPage extends StatefulWidget {

  final UserRepository userRepository;

  LoginSelectPage({ Key key, @required UserRepository userRepository })
      : assert(userRepository != null),
        userRepository = userRepository,
        super(key: key);

  @override
  LoginSelectState createState() => LoginSelectState();


}

class LoginSelectState extends State<LoginSelectPage>{

  double opacity = 0.0;

  void onLastScroll( double opacity ){
    this.setState((){ this.opacity = opacity; });
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Color(0xfff2f3f4),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(left: 10),
                      height: 70,
                      child: Opacity(
                          opacity: this.opacity,
                          child:Image.asset("res/images/splash-logo-black-full.png", height: 44)
                      ),
                    ),
                    Expanded(
                      child: IntroWidget(
                        onScrollLast: this.onLastScroll,
                      )
                    )
                  ],
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
                                  Navigator.push(ctx, FadeRoute(
                                      page: BlocProvider(
                                        builder: (ctx)=> LoginBloc(userRepository: widget.userRepository),
                                        child: LoginEmailPage(userRepository: widget.userRepository)
                                      )
                                  ));
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
