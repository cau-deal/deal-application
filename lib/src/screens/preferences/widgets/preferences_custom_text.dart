import 'package:flutter/material.dart';

class PreferenceCustomText extends StatelessWidget {
  final String title;
  final String subtitle;

  final TextStyle style;
  final Decoration decoration;

  PreferenceCustomText({this.style, this.decoration, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: decoration,
      child: ListTile(
        title: Text(title, style: style),
        subtitle: Text(subtitle, style: TextStyle(fontSize: 14, color: Colors.black45)),
      ),
    );
  }
}
