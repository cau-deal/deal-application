import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/screens/login_select/login_select.dart';


class IntroStep3 extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage( "res/images/step_bg.png" ),
            fit: BoxFit.cover,
          ),
          color: Colors.black26
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Align(
            child: WhiteRoundButton(
                text: S.of(ctx).intro_get_started,

                onPressed: () async {
                  SharedPreferences sp = await SharedPreferences.getInstance();
                  sp.setBool("isSecondRun", true);
                  Navigator.pushReplacement(ctx, MaterialPageRoute(builder:(ctx) => LoginSelectPage()));
                }

            ),
            alignment: AlignmentDirectional.bottomCenter,
          )
        )
    );
  }

}