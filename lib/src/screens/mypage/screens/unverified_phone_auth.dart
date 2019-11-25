import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UnverifiedPhoneAuthPage extends StatefulWidget {
  @override
  UnverifiedPhoneAuthPageState createState() {
    return UnverifiedPhoneAuthPageState();
  }
}

class UnverifiedPhoneAuthPageState extends State<UnverifiedPhoneAuthPage> {
  WebViewController _webController;
  AuthenticationBloc _authenticationBloc;

  num isLoadingState = 0;

  @override
  void initState() {
    this._authenticationBloc = BlocProvider.of<AuthenticationBloc>(context);
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

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (ctx, state) {
          if (state is Authenticating) {
            setState(() {
              this.isLoadingState = 0;
            });
          } else if (state is Authenticated && state.isPhoneAuth) {
            setState(() {
              this.isLoadingState = 1;
            });
            Fluttertoast.showToast(msg: "인증에 성공했습니다.");
            Navigator.pop(ctx);
          } else {
            setState(() {
              this.isLoadingState = 0;
            });
            Fluttertoast.showToast(msg: "인증에 실패했습니다.");
            Navigator.pop(ctx);
          }
        },
        child: CommonAppBarContainer(
            text: S.of(ctx).title_auth_with_self_phone,
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
                          initialUrl: "https://grpc.snhyun.me/stub/page1.html",
                          javascriptMode: JavascriptMode.unrestricted,
                          javascriptChannels: Set.from([
                            JavascriptChannel(
                                name: 'Flutter',
                                onMessageReceived: (JavascriptMessage message) {
                                  final String msg = message.message;
                                  final List<String> tokens = msg.split(" ");
                                  if (tokens[0] == "COMPLETE") {
                                    _authenticationBloc.add(VerificationRequest(VerificationType.PHONE, tokens[1]));
                                  }
                                })
                          ]),
                          onPageFinished: _onPageFinished,
                          onWebViewCreated: (WebViewController _tmpWebController) {
                            this._webController = _tmpWebController;
                          },
                        )))
              ],
            )
        ));
  }
}
