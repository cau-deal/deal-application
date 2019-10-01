import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'widgets/mission_list_tab_container.dart';


class MissionListPage extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {

    return new MissionListTabContainer(
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

            ],
          )
        )
      )
    );
  }
}