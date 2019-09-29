import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'package:deal/src/custom/widgets/white_round_button.dart';


class IntroStep3 extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {
    return Container(
        color: Colors.deepOrangeAccent,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Align(
            child: WhiteRoundButton(
                text: S.of(ctx).intro_get_started,
                onPressed: () => print("test")
            ),
            alignment: AlignmentDirectional.bottomCenter,
          )
        )
    );
  }

}