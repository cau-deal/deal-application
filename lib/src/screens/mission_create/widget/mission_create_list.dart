import 'package:deal/src/screens/mission_create//screens/mission_agreement.dart';
import 'package:deal/src/screens/mission_create/screens/mission_explain.dart';
import 'package:deal/src/screens/mission_create/screens/mission_summary.dart';
import 'package:flutter/material.dart';


class MissionCreateListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: <Widget>[
        MissionSummaryPage(),
        MissionExplainPage(),
        MissionAgreementPage(),
      ],
    );
  }
}