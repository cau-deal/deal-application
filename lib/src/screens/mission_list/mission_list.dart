import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'widgets/mission_list_tab_container.dart';

import 'page1.dart';

class MissionListPage extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {

    return new MissionListTabContainer(
      children: <Widget>[
        Page1(),
        Page1(),
        Page1(),
      ],
    );
  }
}