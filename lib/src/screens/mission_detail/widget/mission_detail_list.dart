import 'package:deal/src/screens/mission_detail/screens/mission_agreement.dart';
import 'package:deal/src/screens/mission_detail/screens/mission_explain.dart';
import 'package:deal/src/screens/mission_detail/screens/mission_summary.dart';
import 'package:flutter/material.dart';

class MissionDetailListView extends StatelessWidget {
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
