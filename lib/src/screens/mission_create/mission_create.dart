import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/mission_create/bloc.dart';
import 'package:deal/src/custom/dialogs/confirm_dialog.dart';
import 'package:deal/src/custom/widgets/custom_progress_hud.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/screens/exception/exception_screen.dart';
import 'package:deal/src/screens/mission_create/widget/mission_create_header.dart';
import 'package:deal/src/screens/mission_create/widget/mission_create_list.dart';
import 'package:deal/src/screens/mission_create/widget/mission_create_tab_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MissionCreatePage extends StatefulWidget {
  final idx;

  const MissionCreatePage({Key key, this.idx}) : super(key: key);

  @override
  MissionCreatePageState createState() => MissionCreatePageState();
}

class MissionCreatePageState extends State<MissionCreatePage> {

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<MissionCreateBloc, MissionCreateState>(
      listener: (ctx, state){
        if( state.isSuccess ){
          Fluttertoast.showToast(msg: "의뢰 등록에 성공하였습니다.");
          Navigator.pop(context);
        } else if (state.isFailure){
          Fluttertoast.showToast(msg: "의뢰 등록에 실패하였습니다.");
        }
      },
      child: BlocBuilder<MissionCreateBloc, MissionCreateState>(
          builder: (ctx, state) {
            return BlocBuilder<AuthenticationBloc, AuthenticationState>(
              builder: (ctx, as){
                return (as is Unauthenticated || (as is Authenticated && !as.isPhoneAuth) )
                    ? ExceptionScreen()
                    : WillPopScope(
                    child: Scaffold(
                      resizeToAvoidBottomPadding: false,
                      body: CustomProgressHUD(
                          inAsyncCall: state.isSubmitting,
                          child: MissionCreateTabContainer(
                            idx: widget.idx,
                            items: ['의뢰내용', '수행방법', '의뢰약관'],
                            header: MissionCreateHeader(),
                            tabBarView: MissionCreateListView(),
                          )
                      ),
                      bottomNavigationBar: Container(
                          color: Colors.white,
                          height: 70,
                          child: Container(
                              padding: EdgeInsets.all(15),
                              child: WhiteRoundButton(
                                  buttonColor: Color(0xFF5f75ac),
                                  textColor: Colors.white,
                                  text: '등록하기',
                                  onPressed: (state.isFormValid)
                                      ? () {
                                    BlocProvider.of<MissionCreateBloc>(ctx).add(
                                        SubmitPressed(
                                            title: state.title,
                                            subtitle: state.subTitle,
                                            point: state.point,
                                            unit: state.unit,
                                            totalCnt: state.totalCount,
                                            start: state.startDate,
                                            end: state.endDate,
                                            missionType: state.missionType,
                                            dataType: state.dataType,
                                            summary: state.missionSummary,
                                            instruction: state.missionInstruction,
                                            terms: state.missionTerms,
                                            thumbnailUri: state.thumbnailUri
                                        )
                                    );
                                  }
                                      : null))),
                    ),
                    onWillPop: () async {
                      ConfirmAction confirm = await showDialog<ConfirmAction>(
                          context: context,
                          barrierDismissible: false,
                          builder: (ctx) => ConfirmDialog(
                            content: "이전화면으로 돌아갈까요?",
                            ternary: false,
                          ));
                      if (confirm == ConfirmAction.ACCEPT) {
                        Navigator.pop(context);
                      }
                      return false;
                    });
              },
            );
          }
      ),
    );
  }
}
