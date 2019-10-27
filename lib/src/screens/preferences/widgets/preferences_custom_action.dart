import 'package:flutter/material.dart';

class PreferenceCustomAction extends StatelessWidget {
  final String title;
  final Function onTap;

  PreferenceCustomAction(
    this.title, {
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(onTap: onTap, title: Text(title));
  }
}
