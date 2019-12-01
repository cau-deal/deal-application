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

class CollectPictureScreen extends StatefulWidget {

  final int amount;

  const CollectPictureScreen({Key key, this.amount}) : super(key: key);

  @override
  CollectPictureScreenState createState() {
    return CollectPictureScreenState();
  }
}

class CollectPictureScreenState extends State<CollectPictureScreen> {

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
        text: "의뢰수행 (이미지 수집)",
        child: Container(

        )
    );
  }
}
