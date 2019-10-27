import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/protos/MissionService.pbenum.dart';
import 'package:deal/src/screens/mission_detail/widget/mission_detail_header.dart';
import 'package:deal/src/screens/mission_detail/widget/mission_detail_list.dart';
import 'package:deal/src/screens/mission_detail/widget/mission_detail_tab_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MissionDetailPage extends StatefulWidget {

  final missionId;

  const MissionDetailPage({Key key, this.missionId}) : super(key: key);

  @override
  State createState() => MissionDetailPageState();
}

class MissionDetailPageState extends State<MissionDetailPage> {

  MissionDetailBloc _missionDetailBloc;

  @override
  void initState() {
    this._missionDetailBloc = BlocProvider.of<MissionDetailBloc>(context);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    this._missionDetailBloc.close();
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: MissionDetailTabContainer(
        idx: widget.missionId,
        items: ['의뢰내용', '수행방법', '의뢰약관'],
        header: MissionDetailHeader(),
        tabBarView: MissionDetailListView(),
      ),
      bottomNavigationBar: Container(
          color: Colors.white,
          height: 70,
          child: BlocBuilder<MissionDetailBloc, MissionDetailState>(
            builder: (ctx, state){
              return Container(
                  padding: EdgeInsets.all(15),
                  child: WhiteRoundButton(
                      buttonColor: Color(0xFF5f75ac),
                      textColor: Colors.white,
                      text: (state.missionState == MissionState.DURING_MISSION)? '참여중' : '참여하기',
                      onPressed:(state.missionState == MissionState.DURING_MISSION)? null : () {
                        this._missionDetailBloc.add(ButtonPressed(widget.missionId));
                      }
                   )
              );
            }
          )
      ),
    );
  }
}
