import 'package:deal/src/custom/widgets/double_back_to_close_app.dart';
import 'package:flutter/material.dart';

import 'page1.dart';
import 'widgets/mission_list_tab_container.dart';

class MissionListPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        body: DoubleBackToCloseApp(
            child: MissionListTabContainer(
      children: <Widget>[
        Page1(),
        Page1(),
        Page1(),
      ],
    )));
  }
}
