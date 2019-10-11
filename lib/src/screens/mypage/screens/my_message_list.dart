import 'package:deal/src/screens/mypage/screens/total_mission.dart';
import 'package:flutter/material.dart';

class MyMessageListView extends StatelessWidget {

  final TabController tabController;

  const MyMessageListView({Key key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: <Widget>[
        Center(
            child: Container(
                color: Colors.amberAccent
            )
        ),
        Center(
            child: Container(
                color: Colors.pinkAccent
            )
        ),
        Center(
            child: Container(
                color: Colors.white
            )
        ),
      ],
    );
  }
}