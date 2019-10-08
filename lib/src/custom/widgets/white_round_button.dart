import 'package:flutter/material.dart';

class WhiteRoundButton extends StatelessWidget {

  final String text;
  final Color textColor;
  final Color buttonColor;
  final dynamic icon;
  final Function() onPressed;
  final FocusNode focusNode;

  WhiteRoundButton({
    @required this.text,
    this.buttonColor = const Color(0xFFFFFFFF),
    @required this.onPressed,
    this.textColor = const Color(0xFF000000),
    this.icon,
    this.focusNode
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
            disabledColor: Color(0xffeeeeee),
            disabledTextColor: Colors.black,
            focusNode: this.focusNode,
            child: this.icon == null ?
                Text(text, style: TextStyle(color: textColor, fontWeight:FontWeight.w700)) :
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.only(right: 5.0),
                        child: SizedBox(
                          width: 28,
                          height: 28,
                          child: IconButton(
                              padding: new EdgeInsets.all(2.0),
                              icon: this.icon,
                              onPressed: null
                          )
                        )
                    ),
                    Text(text, style: TextStyle(color: textColor, fontSize: 14, fontWeight:FontWeight.w600))
                  ],
                )
        )
    );
  }
}