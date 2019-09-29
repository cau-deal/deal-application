import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/tall_height_app_bar_container.dart';


class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return new TallHeightAppBarContainer(
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
                ),
                margin: EdgeInsets.only(top: 32)
              ),

              Container(
                child: WhiteRoundButton (
                    buttonColor: Color(0xFF5f75ac),
                    textColor: Colors.white,
                    text: S.of(ctx).send_email,
                    onPressed: () {

                    }
                ),
                margin: EdgeInsets.only(top: 50)
              )

            ],
          )
        )
        )
    );
  }
}