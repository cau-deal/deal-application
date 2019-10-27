import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/auth_bloc.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/login/bloc.dart';
import 'package:deal/src/custom/widgets/custom_progress_hud.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/tall_height_app_bar_container.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/forgot_password/forgot_password.dart';
import 'package:deal/src/screens/mission_list/mission_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginEmailPage extends StatefulWidget {
  final UserRepository userRepository;

  LoginEmailPage({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        userRepository = userRepository,
        super(key: key);

  @override
  LoginEmailState createState() => LoginEmailState();
}

class LoginEmailState extends State<LoginEmailPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FocusNode _idFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _btnLoginNode = FocusNode();

  LoginBloc _loginBloc;

  UserRepository get _userRepository => widget.userRepository;
  bool get isPopulated => _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isLoginButtonEnabled(LoginState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  void initState() {
    super.initState();
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<LoginBloc, LoginState>(listener: (ctx, state) {
      if (state.isFailure) {
        Fluttertoast.showToast(msg: "아이디와 비밀번호를 확인해주세요.");
      }
      if (state.isSubmitting) {
//          Fluttertoast.showToast(msg: "로그인 요청중..");
      }
      if (state.isSuccess) {
        Navigator.pushAndRemoveUntil(ctx, MaterialPageRoute(builder: (ctx) => MissionListPage()), (Route<dynamic> route) => false);
      }
    }, child: BlocBuilder<LoginBloc, LoginState>(builder: (ctx, state) {
      return CustomProgressHUD(
        child: TallHeightAppBarContainer(
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
                          textInputAction: TextInputAction.next,
                          autovalidate: true,
                          autocorrect: false,
                          validator: (_) {
                            return !state.isEmailValid ? 'Invalid Email' : null;
                          },
                          controller: this._emailController,
                          focusNode: this._idFocusNode,
                          onFieldSubmitted: (_) {
                            _focusChange(context, _idFocusNode, _passwordFocusNode);
                          },
                        ),
                        margin: EdgeInsets.only(top: 32)),

                    Container(
                        child: StyledTextFormField(
                            textInputAction: TextInputAction.done,
                            placeholder: S.of(ctx).login_password_hint,
                            controller: this._passwordController,
                            autovalidate: true,
                            autocorrect: false,
                            validator: (_) {
                              return !state.isPasswordValid ? 'Invalid Password' : null;
                            },
                            obscure: true,
                            focusNode: this._passwordFocusNode,
                            onFieldSubmitted: (_) {
                              _focusChange(context, _passwordFocusNode, _btnLoginNode);
                            }),
                        margin: EdgeInsets.only(top: 12)),

                    //Login Button
                    Container(
                        child: Hero(
                          tag: 'parallax_button',
                          child: WhiteRoundButton(
                              buttonColor: Color(0xFF5f75ac),
                              textColor: Colors.white,
                              text: S.of(ctx).prompt_login,
                              focusNode: _btnLoginNode,
                              onPressed: isLoginButtonEnabled(state)
                                  ? _onFormSubmitted
                                  : () {
                                      Fluttertoast.showToast(msg: "아이디와 비밀번호를 확인해주세요.");
                                    }),
                        ),
                        margin: EdgeInsets.only(top: 50)),

                    Container(
                      margin: const EdgeInsets.only(top: 25.0),
                      child: new InkWell(
                        child: new RichText(
                            text: TextSpan(
                          text: S.of(ctx).prompt_forgot_password,
                          style: new TextStyle(
                              fontFamily: "NanumSquare", color: Color(0xFF5f75ac), fontWeight: FontWeight.w500, decoration: TextDecoration.underline),
                        )),
                        onTap: () {
                          Navigator.push(
                              ctx,
                              MaterialPageRoute(
                                  builder: (context) => BlocProvider<LoginBloc>(
                                      builder: (context) =>
                                          LoginBloc(userRepository: widget.userRepository, authenticationBloc: BlocProvider.of<AuthenticationBloc>(context)),
                                      child: ForgotPasswordPage(userRepository: widget.userRepository))));
                        },
                      ),
                    ),
                  ],
                )))),
        inAsyncCall: state.isSubmitting,
        opacity: 0.5,
        color: Colors.black,
        dismissible: true,
      );
    }));
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onEmailChanged() {
    _loginBloc.add(
      EmailChanged(email: _emailController.text),
    );
  }

  void _onPasswordChanged() {
    _loginBloc.add(
      PasswordChanged(password: _passwordController.text),
    );
  }

  void _onFormSubmitted() {
    _loginBloc.add(
      LoginWithCredentialsPressed(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
  }

  void _focusChange(BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
