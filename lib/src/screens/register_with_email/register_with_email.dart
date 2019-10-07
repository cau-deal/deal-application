import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/register/bloc.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/tall_height_app_bar_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import './widgets/styled_checkbox_for_register.dart';

class RegisterWithEmailPage extends StatefulWidget {

  final UserRepository _userRepository;

  const RegisterWithEmailPage({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  RegisterFormState createState() => RegisterFormState();

}

class RegisterFormState extends State<RegisterWithEmailPage> {

  RegisterBloc _registerBloc;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _password2Controller = TextEditingController();

  bool isChecked;

  bool get isPopulated => _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isRegisterButtonEnabled(RegisterState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting && state.isAgreeWithTerm;
  }

  @override
  void initState() {
    super.initState();

    isChecked = false;

    _registerBloc = BlocProvider.of<RegisterBloc>(context);
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
    _password2Controller.addListener(_onPassword2Changed);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _password2Controller.dispose();
    super.dispose();
  }

  void _onEmailChanged() {
    _registerBloc.dispatch(
      EmailChanged(email: _emailController.text),
    );
  }

  void _onPasswordChanged() {
    _registerBloc.dispatch(
      PasswordChanged(password: _passwordController.text),
    );
  }

  void _onPassword2Changed() {
    _registerBloc.dispatch(
      Password2Changed(
          password1: _passwordController.text,
          password2: _password2Controller.text
      ),
    );
  }

  void _onCheckboxChanged(bool value) {
    this.isChecked = value;
    _registerBloc.dispatch(
        AgreementChanged(checked: value)
    );
  }

  void _onFormSubmitted() {
    _registerBloc.dispatch(
      Submitted(
        email: _emailController.text,
        password: _passwordController.text,
        agreeWithTerms: this.isChecked
      ),
    );
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (ctx, state){
        if (state.isSubmitting) {
          Fluttertoast.showToast(msg: "서버 요청중...");
        }
        if (state.isSuccess) {
          BlocProvider.of<AuthenticationBloc>(context).dispatch(LoggedIn());
          Navigator.of(context).pop();
        }
        if (state.isFailure) {
          Fluttertoast.showToast(msg: "회원가입 실패");
        }
      },
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (ctx, state){
          return TallHeightAppBarContainer(
              text: S.of(ctx).title_register_with_email,
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
                                controller: _emailController,
                                validator: (_) {
                                  return !state.isEmailValid ? '올바른 이메일이 아닙니다.' : null;
                                },
                              ),
                              margin: EdgeInsets.only(top: 32)
                          ),

                          Container(
                              child: StyledTextFormField(
                                placeholder: S.of(ctx).login_password_hint,
                                obscure: true,
                                autovalidate: true,
                                controller: _passwordController,
                                validator: (_) {
                                  return !state.isPasswordValid ? '올바른 패스워드가 아닙니다.' : null;
                                },
                              ),
                              margin: EdgeInsets.only(top: 12)
                          ),

                          Container(
                              child: StyledTextFormField(
                                placeholder: S.of(ctx).login_password_retry_hint,
                                obscure: true,
                                autovalidate: true,
                                controller: _password2Controller,
                                validator: (_) {
                                  return !state.isSamePassword ? '패스워드가 다릅니다.' : null;
                                },
                              ),
                              margin: EdgeInsets.only(top: 12)
                          ),

                          Container(
                              child: StyledCheckboxForRegister(
                                value: this.isChecked,
                                onChanged: _onCheckboxChanged,
                              ),
                              margin: EdgeInsets.only(top: 20)
                          ),

                          Container(
                              child: Hero(
                                  tag: 'parallax_button',
                                  child: WhiteRoundButton (
                                      buttonColor: Color(0xFF5f75ac),
                                      textColor: Colors.white,
                                      text: S.of(ctx).register,
                                      onPressed: isRegisterButtonEnabled(state)
                                          ? _onFormSubmitted
                                          : (){}
                                  )
                              ),
                              margin: EdgeInsets.only(top: 50)
                          )

                        ],
                      )
                  )
              )
          );
        }
      )
    );
  }
}