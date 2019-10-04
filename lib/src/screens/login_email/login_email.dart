import 'package:deal/src/blocs/login/bloc.dart';
import 'package:deal/src/custom/widgets/double_back_to_close_app.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/tall_height_app_bar_container.dart';

import 'package:deal/src/screens/mission_list/mission_list.dart';
import 'package:deal/src/screens/forgot_password/forgot_password.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class LoginEmailPage extends StatefulWidget {

  final UserRepository _userRepository;

  LoginEmailPage({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  LoginEmailState createState() => LoginEmailState();
}

class LoginEmailState extends State<LoginEmailPage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginBloc _loginBloc;

  UserRepository get _userRepository => widget._userRepository;
  bool get isPopulated => _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isLoginButtonEnabled(LoginState state){
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  void initState() {
    super.initState();
    _loginBloc =  BlocProvider.of<LoginBloc>(context);
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (ctx, state){
        print(state);
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (ctx, state){
          return new TallHeightAppBarContainer(
              text: S.of(ctx).title_login_with_email,
              child: Container(
                  padding: EdgeInsets.only(left: 42, right: 42),
                  child: Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                              child: StyledTextFormField(
                                placeholder: S.of(ctx).login_email_hint,
                                textInputType: TextInputType.emailAddress,
                                autovalidate: true,
                                autocorrect: false,
                                validator: (_){
                                  return !state.isEmailValid? 'Invalid Email' : null;
                                },
                                controller: this._emailController,
                              ),
                              margin: EdgeInsets.only(top: 32)
                          ),

                          Container(
                              child: StyledTextFormField(
                                placeholder: S.of(ctx).login_password_hint,
                                controller: this._passwordController,
                                autovalidate: true,
                                autocorrect: false,
                                validator: (_){
                                  return !state.isPasswordValid? 'Invalid Password' : null;
                                },
                                obscure: true,
                              ),
                              margin: EdgeInsets.only(top: 12)
                          ),

                          //Login Button
                          Container(
                              child: Hero(
                                tag: 'parallax_button',
                                child: WhiteRoundButton (
                                    buttonColor: Color(0xFF5f75ac),
                                    textColor: Colors.white,
                                    text: S.of(ctx).prompt_login,
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          ctx,
                                          MaterialPageRoute(builder: (ctx) => MissionListPage()),
                                              (Route<dynamic> route) => false
                                      );
                                    }
                                ),
                              ),
                              margin: EdgeInsets.only(top: 50)
                          ),


                          Container(
                            margin: const EdgeInsets.only(top: 25.0),
                            child: new InkWell(
                              child: new RichText(
                                  text: TextSpan(
                                    text:  S.of(ctx).prompt_forgot_password,
                                    style: new TextStyle(
                                        fontFamily: "NanumSquare",
                                        color: Color(0xFF5f75ac),
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.underline
                                    ),
                                  )
                              ),
                              onTap: () => Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => ForgotPasswordPage())),
                            ),
                          ),
                        ],
                      )
                  )
              )
          );
        }
      )
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onEmailChanged() {
    _loginBloc.dispatch(
      EmailChanged(email: _emailController.text),
    );
  }

  void _onPasswordChanged() {
    _loginBloc.dispatch(
      PasswordChanged(password: _passwordController.text),
    );
  }

}
