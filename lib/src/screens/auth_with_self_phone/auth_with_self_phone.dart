import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'package:webview_flutter/webview_flutter.dart';


class AuthWithSelfPhonePage extends StatefulWidget {

  @override
  AuthWIthSelfPhonePageState createState() { return AuthWIthSelfPhonePageState(); }
}

class AuthWIthSelfPhonePageState extends State<AuthWithSelfPhonePage>{

  WebViewController _webController;

  num isLoadingState = 1;

  void _onPageFinished(String value) {
    setState(() { isLoadingState = 0; });
  }

  @override
  Widget build(BuildContext ctx) {
    return new CommonAppBarContainer(
      text: S.of(ctx).title_auth_with_self_phone,
      child: Container(
        child: IndexedStack(
          index: this.isLoadingState,
          children: <Widget>[
            SizedBox.expand(
              child: WebView(
                initialUrl: "http://example.com",
                javascriptMode: JavascriptMode.unrestricted,
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
    );
  }


}