import 'package:deal/src/blocs/verified/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/screens/mission_list/widgets/mission_list_tile.dart';
import 'package:deal/src/screens/mypage/screens/unverified.dart';
import 'package:deal/src/screens/mypage/screens/unverified_phone_auth.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:webview_flutter/webview_flutter.dart';


class MyTotalMissionPage extends StatefulWidget {
  @override
  MyTotalMissionPageState createState() { return MyTotalMissionPageState(); }
}

class MyTotalMissionPageState extends State<MyTotalMissionPage>{

  WebViewController _webController;

  num isLoadingState = 1;

  var list = [
    { "title": "위에서 아래로", "body": "쭉 땡겨봐여", "top": true },
    { "title": "위에서 아래로", "body": "쭉 땡겨봐여", "top": true },
    { "title": "위에서 아래로", "body": "쭉 땡겨봐여", "top": true },
    { "title": "위에서 아래로", "body": "쭉 땡겨봐여", "top": true }
  ];

  void _onPageFinished(String value) {
    setState(() { isLoadingState = 0; });
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocBuilder<VerificationBloc, VerificationState>(
        builder: (ctx, state){
          if(state is PhoneVerified){
            return Container(
              color: Colors.white,
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  final data = list[index];
                  return MissionListTile(
                    idx: index,
                    title: data['title'],
                  );
                },
              )
            );
          } else {
            return UnverifiedPage();
          }
        }
    );
  }


}