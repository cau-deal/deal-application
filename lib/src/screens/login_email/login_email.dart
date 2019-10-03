import 'package:deal/src/custom/widgets/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/tall_height_app_bar_container.dart';

import 'package:deal/src/screens/mission_list/mission_list.dart';
import 'package:deal/src/screens/forgot_password/forgot_password.dart';


class LoginEmailPage extends StatefulWidget {
  @override
  LoginEmailState createState() => LoginEmailState();
}

class LoginEmailState extends State<LoginEmailPage> {

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext ctx) {
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
                ),
                margin: EdgeInsets.only(top: 32)
              ),

              Container(
                child: StyledTextFormField(
                  placeholder: S.of(ctx).login_password_hint,
                  obscure: true,
                ),
                margin: EdgeInsets.only(top: 12)
              ),

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
}