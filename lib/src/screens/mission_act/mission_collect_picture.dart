import 'dart:io';

import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/custom/widgets/custom_indicator.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/services/point_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CollectPictureScreen extends StatefulWidget {

  final int amount;

  const CollectPictureScreen({Key key, this.amount}) : super(key: key);

  @override
  CollectPictureScreenState createState() {
    return CollectPictureScreenState();
  }
}

class CollectPictureScreenState extends State<CollectPictureScreen> {

  PageController controller;

  var list = [
    {"title": "비속어 및 공격적인 언어 사용"},
    {"title": "권리침해 및 사이버 괴롭힘"},
    {"title": "명의 도용"},
    {"title": "폭력적 위협"},
    {"title": "스팸 및 사기"},
    {"title": "기타"},
  ];

  @override
  void initState() {
    super.initState();
    this.controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext ctx) {
    return CommonAppBarContainer(
        text: "의뢰수행 (이미지 수집)",
        child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  PageIndicator(
                    layout: PageIndicatorLayout.COLOR,
                    size: 4,
                    controller: controller,
                    space: 3.0,
                    count: 4,
                    borderWidth: 1.0,
                    activeColor: Color(0xff333333),
                    borderColor: Color(0xff333333),
                    color: Colors.transparent,
                    clipArea: false,
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    flex: 1,
                    child: PageView(
                      controller: controller,
                      children: <Widget>[
                        Center(
                            child: Text("test")
                        ),
                        Container(
                        ),
                        Container(
                        ),
                        Container(
                        ),
                      ],
                    )
                  )
                ],
              )
          )
    );
  }
}
