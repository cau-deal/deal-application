import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/register/bloc.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/tall_height_app_bar_container.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:flutter/material.dart';
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

  final FocusNode _emailNode = FocusNode();
  final FocusNode _password1Node = FocusNode();
  final FocusNode _password2Node = FocusNode();

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
    _registerBloc.add(
      EmailChanged(email: _emailController.text),
    );
  }

  void _onPasswordChanged() {
    _registerBloc.add(
      PasswordChanged(password: _passwordController.text),
    );
  }

  void _onPassword2Changed() {
    _registerBloc.add(
      Password2Changed(password1: _passwordController.text, password2: _password2Controller.text),
    );
  }

  void _onCheckboxChanged(bool value) {
    this.isChecked = value;
    _registerBloc.add(AgreementChanged(checked: value));
  }

  void _onFormSubmitted() {
    _registerBloc.add(
      Submitted(email: _emailController.text, password: _passwordController.text, agreeWithTerms: this.isChecked),
    );
  }

  void _focusChange(BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<RegisterBloc, RegisterState>(listener: (ctx, state) async {
      if (state.isSubmitting) {
//          Fluttertoast.showToast(msg: "서버 요청중...");
      }
      if (state.isSuccess) {
        Navigator.of(context).pop();
      }
      if (state.isFailure) {
        Fluttertoast.showToast(msg: "아이디와 비밀번호를 확인해주세요");
      }
    }, child: BlocBuilder<RegisterBloc, RegisterState>(builder: (ctx, state) {
      return TallHeightAppBarContainer(
          text: S.of(ctx).title_register_with_email,
          child: Container(
              padding: EdgeInsets.only(left: 42, right: 42),
              child: Container(
                  child: Column(
                children: <Widget>[
                  Container(
                      child: StyledTextFormField(
                        textInputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        placeholder: S.of(ctx).login_email_hint,
                        autovalidate: true,
                        controller: _emailController,
                        focusNode: _emailNode,
                        validator: (_) {
                          return !state.isEmailValid ? '올바른 이메일이 아닙니다.' : null;
                        },
                        onFieldSubmitted: (_) {
                          _focusChange(context, _emailNode, _password1Node);
                        },
                      ),
                      margin: EdgeInsets.only(top: 32)),
                  Container(
                      child: StyledTextFormField(
                        textInputAction: TextInputAction.next,
                        placeholder: S.of(ctx).login_password_hint,
                        obscure: true,
                        autovalidate: true,
                        controller: _passwordController,
                        focusNode: _password1Node,
                        onFieldSubmitted: (_) {
                          _focusChange(context, _emailNode, _password2Node);
                        },
                        validator: (_) {
                          return !state.isPasswordValid ? '올바른 패스워드가 아닙니다.' : null;
                        },
                      ),
                      margin: EdgeInsets.only(top: 12)),
                  Container(
                      child: StyledTextFormField(
                        textInputAction: TextInputAction.done,
                        placeholder: S.of(ctx).login_password_retry_hint,
                        obscure: true,
                        autovalidate: true,
                        controller: _password2Controller,
                        focusNode: _password2Node,
                        validator: (_) {
                          return !state.isSamePassword ? '패스워드가 다릅니다.' : null;
                        },
                      ),
                      margin: EdgeInsets.only(top: 12)),
                  Container(
                      child: StyledCheckboxForRegister(
                        value: this.isChecked,
                        onChanged: _onCheckboxChanged,
                      ),
                      margin: EdgeInsets.only(top: 20)),
                  Container(
                      child: Hero(
                          tag: 'parallax_button',
                          child: WhiteRoundButton(
                              buttonColor: Color(0xFF5f75ac),
                              textColor: Colors.white,
                              text: S.of(ctx).register,
                              onPressed: isRegisterButtonEnabled(state)
                                  ? _onFormSubmitted
                                  : () {
                                      Fluttertoast.showToast(msg: "입력값을 확인해주세요.");
                                    })),
                      margin: EdgeInsets.only(top: 50))
                ],
              ))));
    }));
  }
}
