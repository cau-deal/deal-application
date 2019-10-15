import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/screens/mission_create/widget/mission_create_header.dart';
import 'package:deal/src/screens/mission_create/widget/mission_create_list.dart';
import 'package:deal/src/screens/mission_create/widget/mission_create_tab_container.dart';
import 'package:flutter/material.dart';

class MissionCreatePage extends StatelessWidget {

  final idx;

  const MissionCreatePage({Key key, this.idx}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: MissionCreateTabContainer(
        idx: idx,
        items: ['의뢰내용', '수행방법', '의뢰약관'],
        header: MissionCreateHeader(),
        tabBarView: MissionCreateListView(),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 70,
        child: Container(
          padding: EdgeInsets.all(15),
          child: WhiteRoundButton (
              buttonColor: Color(0xFF5f75ac),
              textColor: Colors.white,
              text: '등록하기',
              onPressed: (){}
          )
        )
      ),
    );
  }

}