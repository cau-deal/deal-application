import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

class PreferencesPage extends StatefulWidget {

  @override
  PreferencesState createState() { return PreferencesState(); }
}

class PreferencesState extends State<PreferencesPage>{


  @override
  Widget build(BuildContext ctx) {
    return new CommonAppBarContainer(
      text: S.of(ctx).title_preferences,
      child: Container(
        child: IndexedStack(
          index: 0,
          children: <Widget>[

          ],
        )
      )
    );
  }


}