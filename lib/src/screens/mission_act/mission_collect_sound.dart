import 'dart:io';

import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/mission_act/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/services/point_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CollectSoundScreen extends StatefulWidget {

  final int missionId;

  const CollectSoundScreen({Key key, this.missionId}) : super(key: key);

  @override
  CollectSoundScreenState createState() {
    return CollectSoundScreenState();
  }
}

class CollectSoundScreenState extends State<CollectSoundScreen> {

  num isLoadingState = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext ctx) {
    return CommonAppBarContainer(
        text: "의뢰수행 (음성 수집)",
        child: Container(
          child:  Column(
            children: <Widget>[
              Container(
                color: Color(0xffeeeeee),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      child: Icon(
                        Icons.help,
                        color: Colors.black45,
                      ),
                      padding: EdgeInsets.all(5),
                    ),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                                "'+' 버튼을 눌러, 사진을 업로드 해주세요.",
                                style: TextStyle(color: Colors.black, height: 1.5, fontSize: 14)
                            )
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              BlocListener<MissionActBloc, MissionActState>(
                listener: (ctx, state){
                  if (state.isFailure) {
                    Fluttertoast.showToast(msg: "제출에 실패하였습니다!");
                  }
                  if (state.isSuccess) {
                    Fluttertoast.showToast(msg: "의뢰를 성공하였습니다!");
                    Navigator.pop(ctx);
                  }
                },
                child: Container(
                  height: 40,
                  child: WhiteRoundButton(
                      buttonColor: Color(0xFF5f75ac),
                      textColor: Colors.white,
                      text: '제출하기',
                      onPressed: (){
//                        this._missionActBloc.add(SubmitCollectPicture(
//                            widget.missionId, this._images.sublist(1)
//                        ));
                      }
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
