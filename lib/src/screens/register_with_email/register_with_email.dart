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

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  RegisterBloc _registerBloc;

  bool get isPopulated => _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isRegisterButtonEnabled(RegisterState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  void initState() {
    super.initState();
    _registerBloc = BlocProvider.of<RegisterBloc>(context);
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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

  void _onFormSubmitted() {
    _registerBloc.dispatch(
      Submitted(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<RegisterBloc, RegisterState>(
      listener: (ctx, state){
        if (state.isSubmitting) {
          Fluttertoast.showToast(msg: "요청중...");
        }
        if (state.isSuccess) {
          BlocProvider.of<AuthenticationBloc>(context).dispatch(LoggedIn());
          Navigator.of(context).pop();
        }
        if (state.isFailure) {
          Fluttertoast.showToast(msg: "로그인 실패..");
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
                                  return !state.isEmailValid ? 'Invalid Email' : null;
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
                                  return !state.isPasswordValid ? 'Invalid Password' : null;
                                },
                              ),
                              margin: EdgeInsets.only(top: 12)
                          ),

                          Container(
                              child: StyledTextFormField(
                                placeholder: S.of(ctx).login_password_retry_hint,
                                obscure: true,
                                autovalidate: true,
                                validator: (_) {
                                  return !state.isPasswordValid ? 'Invalid Password' : null;
                                },
                              ),
                              margin: EdgeInsets.only(top: 12)
                          ),

                          Container(
                              child: StyledCheckboxForRegister(),
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