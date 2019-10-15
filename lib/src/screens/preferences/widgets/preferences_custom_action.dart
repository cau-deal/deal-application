import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/screens/preferences/widgets/preferences_page.dart';
import 'package:flutter/material.dart';

class PreferenceCustomAction extends StatelessWidget {
  final String title;
  final Function onTap;

  PreferenceCustomAction(this.title, {@required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(title)
    );
  }
}
