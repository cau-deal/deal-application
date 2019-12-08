import 'dart:io';

import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/services/point_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UploadCollectSurvey extends StatefulWidget {

  final int sid;

  const UploadCollectSurvey({Key key, this.sid}) : super(key: key);

  @override
  UploadCollectSurveyState createState() {
    return UploadCollectSurveyState();
  }
}

class UploadCollectSurveyState extends State<UploadCollectSurvey> {

  num isLoadingState = 0;
  WebViewController _webController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onPageFinished(String value) {
    setState(() {
      isLoadingState = 1;
    });
  }

  //https://grpc.snhyun.me/react-survey/#/
  @override
  Widget build(BuildContext ctx) {
    return CommonAppBarContainer(
        text: "의뢰등록 (설문수집)",
        onBackPressed: (){
          Navigator.pop(context, {'sid': -1});
        },
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
                child: SizedBox.expand(
                    child: WebView(
                      initialUrl: (widget.sid != -1)
                          ? "http://grpc.snhyun.me:4000/#/user/surveys/${widget.sid}/edit"
                          : "http://grpc.snhyun.me:4000/#/user/surveys",
                      javascriptMode: JavascriptMode.unrestricted,
                      javascriptChannels: Set.from([
                        JavascriptChannel(
                            name: 'Flutter',
                            onMessageReceived: (JavascriptMessage message) {
                              final String msg = message.message;
                              final List<String> tokens = msg.split(" ");
                              if(tokens[0] == "UPDATED"){
                                Navigator.pop(context, { 'sid': int.parse(tokens[1]) });
                              }
                            })
                      ]),
                      onPageFinished: _onPageFinished,
                      onWebViewCreated: (WebViewController _tmpWebController) {
                        this._webController = _tmpWebController;
                      },
                    ))
            )
          ],
        )


    );
  }
}
