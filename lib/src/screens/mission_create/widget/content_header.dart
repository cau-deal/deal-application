import 'package:flutter/material.dart';

class ContentHeader extends StatelessWidget {
  final label;

  const ContentHeader({Key key, this.label = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, bottom: 5, left: 2),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xffCECECE), width: 1.0))),
      child: Text(
        this.label,
        style: TextStyle(fontSize: 14.0, color: Color(0xff333333), letterSpacing: -0.2),
      ),
    );
  }
}
