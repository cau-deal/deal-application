import 'package:flutter/material.dart';

class WhiteRoundButton extends StatelessWidget {

  final String text;
  final Color textColor;
  final Color buttonColor;
  final String assetImage;
  final Function() onPressed;

  WhiteRoundButton({
    @required this.text,
    this.buttonColor = const Color(0xFFFFFFFF),
    @required this.onPressed,
    this.textColor = const Color(0xFF000000),
    this.assetImage
  });

  @override
  Widget build(BuildContext ctx) {
    return ButtonTheme(
        height: 46,
        minWidth: double.infinity,
        child: RaisedButton(
            color: buttonColor,
            elevation: 0,
            highlightElevation: 2,
            onPressed: onPressed,
            child: this.assetImage == null ?
                Text(text, style: TextStyle(color: textColor, fontWeight:FontWeight.w700)) :
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.only(right: 5.0),
                        child: Image.asset(this.assetImage, width: 28, height: 28)
                    ),
                    Text(text, style: TextStyle(color: textColor, fontWeight:FontWeight.w700))
                  ],
                )
        )
    );
  }
}