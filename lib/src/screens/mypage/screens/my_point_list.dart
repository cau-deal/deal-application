import 'package:deal/src/screens/mypage/screens/total_mission.dart';
import 'package:flutter/material.dart';

class MyPointListView extends StatelessWidget {

  final TabController tabController;

  const MyPointListView({Key key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: this.tabController,
      children: <Widget>[
        MyTotalMissionPage(),
        MyTotalMissionPage(),
      ],
    );
  }
}