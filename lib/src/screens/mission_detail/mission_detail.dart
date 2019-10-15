import 'package:deal/generated/i18n.dart';
import 'package:deal/src/custom/widgets/badge.dart';
import 'package:deal/src/custom/widgets/double_back_to_close_app.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/screens/mission_detail/widget/mission_detail_header.dart';
import 'package:deal/src/screens/mission_detail/widget/mission_detail_list.dart';
import 'package:deal/src/screens/mission_detail/widget/mission_detail_tab_container.dart';
import 'package:flutter/material.dart';

class MissionDetailPage extends StatelessWidget {

  final idx;

  const MissionDetailPage({Key key, this.idx}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: MissionDetailTabContainer(
        idx: idx,
        items: ['의뢰내용', '수행방법', '의뢰약관'],
        header: MissionDetailHeader(),
        tabBarView: MissionDetailListView(),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 70,
        child: Container(
          padding: EdgeInsets.all(15),
          child: WhiteRoundButton (
              buttonColor: Color(0xFF5f75ac),
              textColor: Colors.white,
              text: '참여하기 (잔여: 9000)',
              onPressed: (){}
          )
        )
      ),
    );
  }

}