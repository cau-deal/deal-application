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
  String _buttonText;

  @override
  void initState() {
    this._missionDetailBloc = BlocProvider.of<MissionDetailBloc>(context);
    this._buttonText = "";
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    this._missionDetailBloc.close();
  }

  String getButtonText(ConductMissionState cms, MissionState ms){

//    1. DURING_MISSION (진행 중)
//    2. WAITING_VERIFICATION(검수 대기중)
//    3. DURING_VERIFICATION(검수 진행중)
//    4. COMPLETE_MISSION (완료)
//    5. RETURN_VERIFICATION (반려)
//    6. FAIL_MISSION (미션 실패, ex> 시간 초과)

    switch(ms){
      case MissionState.WAITING_REGISTER:
        return "등록대기";
      case MissionState.SOLD_OUT:
        return "할당완료";
      case MissionState.COMPLETE_MISSION:
        return "미션 완료";
    }

    switch(cms){
      case ConductMissionState.INIT_CONDUCT_MISSION_STATE:
        return "참여하기";
      case ConductMissionState.DURING_MISSION_CONDUCT_MISSION_STATE:
        return "진행중";
      case ConductMissionState.WAITING_VERIFICATION_CONDUCT_MISSION_STATE:
        return "검수 대기중";
      case ConductMissionState.DURING_VERIFICATION_CONDUCT_MISSION_STATE:
        return "검수 진행중";
      case ConductMissionState.COMPLETE_VERIFICATION_CONDUCT_MISSION_STATE:
        return "미션 완료";
      case ConductMissionState.RETURN_VERIFICATION_CONDUCT_MISSION_STATE:
        return "미션 반려";
      case ConductMissionState.UNKNOWN_CONDUCT_MISSION_STATE:
      default: {
        return "완료됨";
      }
    }
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
          child: BlocListener<MissionDetailBloc, MissionDetailState>(
              listener: (ctx, state){
                setState(() {
                  this._buttonText = getButtonText(state.conductMissionState, state.missionState);
                });
              },
              child: BlocBuilder<MissionDetailBloc, MissionDetailState>(
                  builder: (ctx, state){
                    this._buttonText = getButtonText(state.conductMissionState, state.missionState);
                    return Container(
                        padding: EdgeInsets.all(15),
                        child: WhiteRoundButton(
                            buttonColor: Color(0xFF5f75ac),
                            textColor: Colors.white,
                            text: this._buttonText,
                            onPressed:(state.conductMissionState != ConductMissionState.INIT_CONDUCT_MISSION_STATE)? null : () {
                              this._missionDetailBloc.add(ButtonPressed(widget.missionId));
                            }
                        )
                    );
                  }
              ),
          )
      ),
    );
  }
}
