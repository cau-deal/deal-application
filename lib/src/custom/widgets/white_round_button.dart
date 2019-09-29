import 'package:flutter/material.dart';

class WhiteRoundButton extends StatelessWidget {

  final String text;
  final Color textColor;
  final Color buttonColor;
  final Function() onPressed;

  WhiteRoundButton({
    @required this.text,
    this.buttonColor = const Color(0xFFFFFFFF),
    @required this.onPressed,
    this.textColor = const Color(0xFF000000),
  });

  @override
  Widget build(BuildContext ctx) {
    return ButtonTheme(
        height: 50,
        minWidth: double.infinity,
        child: RaisedButton(
            color: buttonColor,
            elevation: 0,
            onPressed: onPressed,
            child: Text(text, style: TextStyle(color: textColor))
        )
    );
  }
}