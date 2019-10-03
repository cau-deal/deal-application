import 'package:deal/src/custom/widgets/double_back_to_close_app.dart';
import 'package:flutter/material.dart';

import 'widgets/mission_list_tab_container.dart';

import 'page1.dart';

class MissionListPage extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {

    return DoubleBackToCloseApp(
        child: new MissionListTabContainer(
            children: <Widget>[
              Page1(),
              Page1(),
              Page1(),
            ],
        )
    );
  }

}