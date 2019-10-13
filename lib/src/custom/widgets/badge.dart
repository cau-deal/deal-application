import 'package:flutter/material.dart';

class Badge extends StatelessWidget {

  final String text;
  final Color color;
  final double fontSize;

  const Badge({Key key,
    this.text = " ",
    this.color,
    this.fontSize = 12}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 6, top: 3, bottom: 3),
      decoration: BoxDecoration(
        color: color == null ? Color(0xFF5f75ac) : color,
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Text(text, style: TextStyle(fontSize: fontSize, fontFamily: "NanumSquare"),)
    );
  }
}