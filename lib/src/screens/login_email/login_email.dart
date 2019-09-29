import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/tall_height_app_bar_container.dart';

import 'package:deal/src/screens/forgot_password/forgot_password.dart';


class LoginEmailPage extends StatelessWidget {
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
                  textInputType: TextInputType.visiblePassword,
                  obscure: true,
                ),
                margin: EdgeInsets.only(top: 12)
              ),

              Container(
                child: WhiteRoundButton (
                    buttonColor: Color(0xFF5f75ac),
                    textColor: Colors.white,
                    text: S.of(ctx).prompt_login,
                    onPressed: () {

                    }
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
                              color: Color(0xFF5f75ac),
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline
                          ),
                        )
                    ),
                    onTap: () => Navigator.pushReplacement(ctx, MaterialPageRoute(builder: (ctx) => ForgotPasswordPage())),
                  ),
              ),
            ],
          )
        )
        )
    );
  }
}