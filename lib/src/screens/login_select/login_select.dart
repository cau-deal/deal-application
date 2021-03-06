import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/login/bloc.dart';
import 'package:deal/src/blocs/register/bloc.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/login_email/login_email.dart';
import 'package:deal/src/screens/login_google/login_google.dart';
import 'package:deal/src/screens/login_select/widgets/intro_widget.dart';
import 'package:deal/src/screens/register_with_email//register_with_email.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoginSelectPage extends StatefulWidget {
  final UserRepository userRepository;

  LoginSelectPage({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        userRepository = userRepository,
        super(key: key);

  @override
  LoginSelectState createState() => LoginSelectState();
}

class LoginSelectState extends State<LoginSelectPage> {
  AuthenticationBloc authBloc;
  double opacity = 1.0;

  void onLastScroll(double opacity) {
    this.setState(() {
      this.opacity = opacity;
    });
  }

  @override
  void initState() {
    super.initState();
    authBloc = BlocProvider.of<AuthenticationBloc>(context);
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (ctx, state) {},
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (ctx, state) {
            return (state is Authenticating)
              ? Container(
                color: Colors.white,
                child: SpinKitThreeBounce(
                  color: Color(0xffF7CF00),
                  size: 20.0,
                )
              )
              : Scaffold(
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
                                  child: Opacity(opacity: this.opacity, child: Image.asset("res/images/splash-logo-black-full.png", height: 44)),
                                ),
                                Expanded(
                                    child: IntroWidget(
                                      onScrollLast: onLastScroll,
                                    ))
                              ],
                            )),
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
                                            Navigator.push(
                                                ctx,
                                                MaterialPageRoute(
                                                    fullscreenDialog: true,
                                                    builder: (context) => BlocProvider<LoginBloc>(
                                                        builder: (context) => LoginBloc(
                                                            userRepository: widget.userRepository,
                                                            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context)),
                                                        child: LoginEmailPage(userRepository: widget.userRepository))));
                                          },
                                          buttonColor: Color(0xFF5f75ac),
                                          textColor: Colors.white,
                                          text: S.of(ctx).login_with_email,
                                        ),
                                      )),
                                  Container(
                                    margin: const EdgeInsets.only(top: 7.0),
                                    child: WhiteRoundButton(
                                      onPressed: () {
                                        Navigator.push(
                                            ctx,
                                            MaterialPageRoute(
                                                fullscreenDialog: true,
                                                builder: (context) => BlocProvider<LoginBloc>(
                                                    builder: (context) => LoginBloc(
                                                        userRepository: widget.userRepository, authenticationBloc: BlocProvider.of<AuthenticationBloc>(context)),
                                                    child: LoginGooglePage(userRepository: widget.userRepository))));
                                      },
                                      buttonColor: Color(0xffffffff),
                                      icon: Image.asset('res/images/google-logo.png'),
                                      text: S.of(ctx).login_with_google,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 20.0),
                                    child: RichText(
                                        text: TextSpan(
                                          text: S.of(ctx).register,
                                          recognizer: new TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                  ctx,
                                                  MaterialPageRoute(
                                                      builder: (ctx) => BlocProvider<RegisterBloc>(
                                                          builder: (context) => RegisterBloc(
                                                              userRepository: widget.userRepository,
                                                              authenticationBloc: BlocProvider.of<AuthenticationBloc>(context)),
                                                          child: RegisterWithEmailPage(userRepository: widget.userRepository))));
                                            },
                                          style: TextStyle(color: Color(0xFF5f75ac), fontWeight: FontWeight.w600, fontFamily: "NanumSquare"),
                                        )),
                                  ),
                                ],
                              ),
                            )),
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              );
          },
        )
    );
  }
}
