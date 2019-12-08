import 'dart:async';
import 'dart:io';

import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/mission_act/bloc.dart';
import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/services/point_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CollectSurveyScreen extends StatefulWidget {

  final int missionId;

  const CollectSurveyScreen({Key key, this.missionId}) : super(key: key);

  @override
  CollectSurveyScreenState createState() {
    return CollectSurveyScreenState();
  }
}

class CollectSurveyScreenState extends State<CollectSurveyScreen> {

  num isLoadingState = 0;
  int surveyId = -1;


  Completer<WebViewController> _controller = Completer<WebViewController>();

  WebViewController _webController;
  MissionRepository mr;
  UserRepository ur;

  MissionActBloc _missionActBloc;
  MissionDetailBloc _missionDetailBloc;

  @override
  void initState() {
    super.initState();
    mr = RepositoryProvider.of<MissionRepository>(context);
    ur = RepositoryProvider.of<UserRepository>(context);
    ur.getAccessToken().then((token){
      mr.fetchSurveyId(accessToken:token, missionId:widget.missionId).then((res){
        setState(() { this.surveyId = res.surveyId; });
//        this._webController.reload();
        this._controller.future.then((controller){
          controller.loadUrl("http://grpc.snhyun.me:4000/#/surveys/${res.surveyId}");
          setState(() {
            this.isLoadingState = 1;
          });
        });
      });
    });

    this._missionActBloc = BlocProvider.of<MissionActBloc>(context);
    this._missionDetailBloc = BlocProvider.of<MissionDetailBloc>(context);

  }

  @override
  void dispose() {
    this._missionActBloc.close();
    this._missionDetailBloc.close();
    super.dispose();
  }


  @override
  Widget build(BuildContext ctx) {
    return CommonAppBarContainer(
        text: "의뢰수행 (설문 수집)",
        child: IndexedStack(
          index: this.isLoadingState,
          children: <Widget>[
            Container(
                color: Colors.white,
                child: SpinKitThreeBounce(
                  color: Color(0xffF7CF00),
                  size: 20.0,
                )
            ),
            Container(
                child:
                BlocListener<MissionActBloc, MissionActState>(
                    listener: (ctx, state){
                      if (state.isFailure) {
                        Fluttertoast.showToast(msg: "제출에 실패하였습니다!");
                      }
                      if (state.isSuccess) {
                        _missionDetailBloc.add(Fetch(widget.missionId));
                        Fluttertoast.showToast(msg: "의뢰를 성공하였습니다!");
                        Navigator.pop(ctx);
                      }
                    },
                  child: SizedBox.expand(
                      child: WebView(
                        initialUrl: "",
                        javascriptMode: JavascriptMode.unrestricted,
                        javascriptChannels: Set.from([
                          JavascriptChannel(
                              name: 'Flutter',
                              onMessageReceived: (JavascriptMessage message) {
                                final String msg = message.message;
                                if (msg == "COMPLETE") {
                                  this._missionActBloc.add(SubmitCollectSurvey(widget.missionId));
                                }
                              })
                        ]),
                        onWebViewCreated: (WebViewController _tmpWebController) {
                          _controller.complete(_tmpWebController);
                          this._webController = _tmpWebController;
                        },
                      )
                  )
                )
            )
          ],
        )
    );
  }
}
