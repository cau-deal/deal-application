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

class KakaopayProcessScreen extends StatefulWidget {

  final int amount;

  const KakaopayProcessScreen({Key key, this.amount}) : super(key: key);

  @override
  KakaopayProcessState createState() {
    return KakaopayProcessState();
  }
}

class KakaopayProcessState extends State<KakaopayProcessScreen> {

  WebViewController _webController;
  var methodChannel = const MethodChannel('kr.ac.cau.capstone.deal.android');
  PointService ps;

  num isLoadingState = 0;
  String pg_url = "";

  @override
  void initState() {
    super.initState();
    this.process();
  }

  void process() async {
    ps = await PointService.init();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString('ticket') ?? "";
    var res = await ps.deposit(accessToken: token, amount: widget.amount);

    this.pg_url = res.kakaopayUrl;

    setState(() {
      this.pg_url = res.kakaopayUrl;
      this._webController.loadUrl(res.kakaopayUrl);
      print(res.kakaopayUrl);
    });
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

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _launchIntent(String url) async {
    try {
      var result = await methodChannel.invokeMethod('launchIntent', {"url": url});
      print(result);
    } on PlatformException catch (e) {
      print("Failed to get battery level: '${e.message}'.");
    }
  }

  @override
  Widget build(BuildContext ctx) {
    return CommonAppBarContainer(
        text: "카카오페이 결제",
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
                      initialUrl: this.pg_url,
                      javascriptMode: JavascriptMode.unrestricted,
                      navigationDelegate: (NavigationRequest request)
                      {
                        try {
                          if(request.url.startsWith("intent://")){
                            _launchIntent(request.url);
                            return NavigationDecision.prevent;
                          }
                          _launchURL(request.url);
//                          print(request.url);
                          return NavigationDecision.navigate;
                        } catch(e) {
                          Fluttertoast.showToast(msg: "결제 오류 발생!");
                          return NavigationDecision.prevent;
                        }
                      },
                      javascriptChannels: Set.from([
                        JavascriptChannel(
                            name: 'Flutter',
                            onMessageReceived: (JavascriptMessage message) {

                            })
                      ]),
                      onPageFinished: _onPageFinished,
                      onWebViewCreated: (WebViewController _tmpWebController) {
                        this._webController = _tmpWebController;
                      },
                    )))
          ],
        )
    );
  }
}
