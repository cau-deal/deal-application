import 'package:deal/src/blocs/mission_act/bloc.dart';
import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/protos/Data.pbenum.dart';
import 'package:deal/src/protos/MissionService.pbenum.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/mission_act/mission_collect_picture.dart';
import 'package:deal/src/screens/mission_act/mission_collect_sound.dart';
import 'package:deal/src/screens/mission_act/mission_collect_survey.dart';
import 'package:deal/src/screens/mission_act/mission_process_image.dart';
import 'package:deal/src/screens/mission_detail/widget/mission_detail_header.dart';
import 'package:deal/src/screens/mission_detail/widget/mission_detail_list.dart';
import 'package:deal/src/screens/mission_detail/widget/mission_detail_tab_container.dart';
import 'package:deal/src/screens/point_credit/payments/kakaopay.dart';
import 'package:quill_delta/quill_delta.dart';
import 'package:zefyr/zefyr.dart';
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

    switch(cms){
      case ConductMissionState.INIT_CONDUCT_MISSION_STATE:
        switch(ms){
          case MissionState.WAITING_REGISTER:
            return "등록대기";
          case MissionState.SOLD_OUT:
            return "할당완료(매진)";
          case MissionState.COMPLETE_MISSION:
            return "의뢰 마감";
        }
        return "의뢰 참여";
      case ConductMissionState.DURING_MISSION_CONDUCT_MISSION_STATE:
        return "의뢰 수행";
      case ConductMissionState.WAITING_VERIFICATION_CONDUCT_MISSION_STATE:
        return "검수 대기중";
      case ConductMissionState.DURING_VERIFICATION_CONDUCT_MISSION_STATE:
        return "검수 진행중";
      case ConductMissionState.COMPLETE_VERIFICATION_CONDUCT_MISSION_STATE:
        return "의뢰 완료";
      case ConductMissionState.RETURN_VERIFICATION_CONDUCT_MISSION_STATE:
        return "의뢰 반려";
      case ConductMissionState.FAIL_MISSION_CONDUCT_MISSION_STATE:
        return "의뢰 실패";

      case ConductMissionState.UNKNOWN_CONDUCT_MISSION_STATE:
      default: {
        switch(ms){
          case MissionState.WAITING_REGISTER:
            return "등록대기";
          case MissionState.SOLD_OUT:
            return "할당완료";
          case MissionState.COMPLETE_MISSION:
            return "의뢰 마감";
        }
        return "의뢰 할당중";
      }
    }
  }

  Widget getRoutePage(MissionDetailState state){

//    1. DURING_MISSION (진행 중)
//    2. WAITING_VERIFICATION(검수 대기중)
//    3. DURING_VERIFICATION(검수 진행중)
//    4. COMPLETE_MISSION (완료)
//    5. RETURN_VERIFICATION (반려)
//    6. FAIL_MISSION (미션 실패, ex> 시간 초과)

    switch(state.conductMissionState){
      case ConductMissionState.DURING_MISSION_CONDUCT_MISSION_STATE:
        {
          switch (state.missionType) {
            case MissionType.COLLECT_MISSION_TYPE:
              {
                switch (state.dataType) {
                  case DataType.IMAGE: return CollectPictureScreen(state: state, missionId: widget.missionId);
                  case DataType.SURVEY: return CollectSurveyScreen(missionId: widget.missionId);
                  case DataType.SOUND: return CollectSoundScreen(missionId: widget.missionId, state: state);
                }

                break;
              }
            case MissionType.PROCESS_MISSION_TYPE:
              {
                switch(state.dataType){
                  case DataType.IMAGE: return ProcessPictureScreen(state: state, missionId: widget.missionId);
                }
                break;
              }
          }
          break;
        }
      default: return null;
    }

  }

  void buttonClickHandler(MissionDetailState state) async {

    switch(state.conductMissionState){
      case ConductMissionState.INIT_CONDUCT_MISSION_STATE: {
        this._missionDetailBloc.add(ButtonPressed(widget.missionId));
      } break;

      case ConductMissionState.DURING_MISSION_CONDUCT_MISSION_STATE: {
        await Navigator.push(context, MaterialPageRoute(
            builder: (ctx) => MultiBlocProvider(
              providers: [
                BlocProvider<MissionActBloc>(builder: (ctx) => MissionActBloc(
                    userRepository: RepositoryProvider.of<UserRepository>(context),
                    missionRepository: RepositoryProvider.of<MissionRepository>(context)
                )),
                BlocProvider<MissionDetailBloc>(builder: (ctx) => this._missionDetailBloc)
              ],
              child: getRoutePage(state)
            ),
            fullscreenDialog: true
        ));
        break;
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
                            onPressed: (state.conductMissionState != ConductMissionState.UNKNOWN_CONDUCT_MISSION_STATE)?
                                (){ buttonClickHandler(state); } : null
                        )
                    );
                  }
              ),
          )
      ),
    );
  }
}
