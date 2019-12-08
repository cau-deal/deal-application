import 'dart:io';

import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/screens/mission_create/modules/custom_image_delegate.dart';
import 'package:deal/src/services/point_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:zefyr/zefyr.dart';
import 'package:quill_delta/quill_delta.dart';


class UploadCollectSound extends StatefulWidget {

  final NotusDocument doc;

  const UploadCollectSound({Key key, this.doc}) : super(key: key);

  @override
  UploadCollectSoundState createState() {
    return UploadCollectSoundState();
  }
}

class UploadCollectSoundState extends State<UploadCollectSound> {

  ZefyrController _controller;
  FocusNode _focusNode;

  num isLoadingState = 0;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    setState(() {
      NotusDocument _doc = widget.doc ?? NotusDocument.fromDelta(Delta()..insert("\n"));
      _controller = ZefyrController(_doc);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext ctx) {

    final theme = ZefyrThemeData(
      cursorColor: Colors.black,
      paragraphTheme: StyleTheme(textStyle: TextStyle(fontSize: 16.0, height: 1.25, fontWeight: FontWeight.normal, color: Colors.grey.shade800)),
      //selectionColor: Color(0xFF5f75ac),
      toolbarTheme: ZefyrToolbarTheme.fallback(context).copyWith(
        color: Colors.grey.shade800,
        toggleColor: Colors.grey.shade900,
        iconColor: Colors.white,
        disabledIconColor: Colors.grey.shade500,
      ),
    );

    return CommonAppBarContainer(
        text: "의뢰등록 (음성수집)",
        onBackPressed: (){
          Navigator.pop(context, { 'doc': _controller.document.toString() });
        },
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
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
                                        "개행을 기준으로 스크립트가 분리됩니다.\n"
                                        "개행을 기준으로 음성수집 단위가 구분되므로 개행에 유의해서 스크립트(대본)를 작성해주세요!",
                                        style: TextStyle(color: Colors.black, height: 1.5, fontSize: 14)
                                    )
                                )
                            )
                          ],
                        ),
                      )
                    ],
                  )
              ),
              Expanded(
                child: Container(
                    child: ZefyrScaffold(
                      child: ZefyrTheme(
                        data: theme,
                        child: ZefyrEditor(
                          controller: _controller,
                          focusNode: _focusNode,
                          mode: ZefyrMode.edit,
                          imageDelegate: CustomImageDelegate(),
                        ),
                      ),
                    )
                )
              )
            ],
          )
        )
    );
  }
}
