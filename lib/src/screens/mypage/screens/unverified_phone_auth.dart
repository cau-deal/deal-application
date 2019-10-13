import 'package:deal/src/blocs/verified/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:webview_flutter/webview_flutter.dart';


class UnverifiedPhoneAuthPage extends StatefulWidget {

  @override
  UnverifiedPhoneAuthPageState createState() { return UnverifiedPhoneAuthPageState(); }
}

class UnverifiedPhoneAuthPageState extends State<UnverifiedPhoneAuthPage>{

  WebViewController _webController;
  VerificationBloc _verificationBloc;

  num isLoadingState = 1;

  @override
  void initState() {
    this._verificationBloc = BlocProvider.of<VerificationBloc>(context);
    super.initState();
  }

  void _onPageFinished(String value) {
    setState(() { isLoadingState = 0; });
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<VerificationBloc, VerificationState>(
      listener: (ctx, state){
        if(state is! Verifying){
          Navigator.pop(ctx);
        }
      },
      child: CommonAppBarContainer(
          text: S.of(ctx).title_auth_with_self_phone,
          child: Container(
              child: IndexedStack(
                index: this.isLoadingState,
                children: <Widget>[
                  SizedBox.expand(
                      child: WebView(
                        initialUrl: "https://grpc.snhyun.me/stub/page1.html",
                        javascriptMode: JavascriptMode.unrestricted,
                        javascriptChannels: Set.from([
                          JavascriptChannel(
                              name: 'Flutter',
                              onMessageReceived: (JavascriptMessage message){
                                final String msg = message.message;
                                Fluttertoast.showToast(msg: msg);

                                if( msg == "COMPLETE" ){
                                  _verificationBloc.dispatch(
                                      VerificationSuccess(VerificationType.PHONE, msg)
                                  );
                                }

                              }
                          )
                        ]),
                        onPageFinished: _onPageFinished,
                        onWebViewCreated: (WebViewController _tmpWebController) {
                          this._webController = _tmpWebController;
                        },
                      )
                  ),
                  Container(
                      color: Colors.transparent,
                      child: Center(
                          child: CircularProgressIndicator()
                      )
                  )
                ],
              )
          )
      )
    );
  }


}