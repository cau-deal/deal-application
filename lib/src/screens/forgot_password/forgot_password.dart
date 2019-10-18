import 'package:deal/src/blocs/login/bloc.dart';
import 'package:deal/src/custom/widgets/custom_progress_hud.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/tall_height_app_bar_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ForgotPasswordPage extends StatefulWidget {

  final UserRepository _userRepository;

  const ForgotPasswordPage({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  ForgotPasswordState createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPasswordPage> {

  final TextEditingController _emailController = TextEditingController();
  LoginBloc _loginBloc;

  String email = "";

  Future<void> onSendEmailClick(BuildContext ctx) async {

  }

  void _onEmailChanged() {
    _loginBloc.dispatch(
      EmailChanged(email: _emailController.text),
    );
  }

  bool isLoginButtonEnabled(LoginState state){
    return state.isEmailValid && !state.isSubmitting;
  }

  void _onFormSubmitted() {
    _loginBloc.dispatch(
      FindPasswordPressed(
        email: _emailController.text,
      ),
    );
  }


  @override
  void initState() {
    super.initState();
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    _emailController.addListener(_onEmailChanged);
  }


  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (ctx, state){
        if (state.isSuccess || state.isFailure) {
          Fluttertoast.showToast(msg: "발송되었습니다.");
          Navigator.pop(ctx);
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
          builder: (ctx, state){
            return CustomProgressHUD(
              child: TallHeightAppBarContainer(
                  text: S.of(ctx).title_forgot_password,
                  child: Container(
                      padding: EdgeInsets.only(left: 42, right: 42),
                      child: Container(
                          child: Column(
                            children: <Widget>[

                              Container(
                                  child: Text(
                                      S.of(ctx).prompt2_forgot_password,
                                      style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400, height: 1.7)
                                  )
                              ),

                              Container(
                                  child: StyledTextFormField(
                                    placeholder: S.of(ctx).login_email_hint,
                                    textInputType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.next,
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
                                  child: Hero(
                                      tag: 'parallax_button',
                                      child: WhiteRoundButton (
                                          buttonColor: Color(0xFF5f75ac),
                                          textColor: Colors.white,
                                          text: S.of(ctx).send_email,
                                          onPressed: isLoginButtonEnabled(state)? _onFormSubmitted : (){
                                            Fluttertoast.showToast(msg: "이메일을 확인해주세요.");
                                          }
                                      )
                                  ),
                                  margin: EdgeInsets.only(top: 50)
                              )

                            ],
                          )
                      )
                  )
              ),
              inAsyncCall: state.isSubmitting,
              opacity: 0.5,
              color: Colors.black,
              dismissible: true,
            );
          }
      )
    );
  }

}