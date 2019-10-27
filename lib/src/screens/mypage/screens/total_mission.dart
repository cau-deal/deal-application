import 'package:deal/src/blocs/verified/bloc.dart';
import 'package:deal/src/screens/mission_list/widgets/mission_list_tile.dart';
import 'package:deal/src/screens/mypage/screens/unverified_phone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyTotalMissionPage extends StatefulWidget {
  @override
  MyTotalMissionPageState createState() {
    return MyTotalMissionPageState();
  }
}

class MyTotalMissionPageState extends State<MyTotalMissionPage> {
  WebViewController _webController;

  num isLoadingState = 1;

  var list = [
    {"thumbnail": "res/images/default_thumbnail.png", "title": "위에서 아래로", "body": "쭉 땡겨봐여", "top": true},
    {"thumbnail": "res/images/default_thumbnail.png", "title": "위에서 아래로", "body": "쭉 땡겨봐여", "top": true},
    {"thumbnail": "res/images/default_thumbnail.png", "title": "위에서 아래로", "body": "쭉 땡겨봐여", "top": true},
    {"thumbnail": "res/images/default_thumbnail.png", "title": "위에서 아래로", "body": "쭉 땡겨봐여", "top": true}
  ];

  @override
  void initState() {
    super.initState();
  }

  void _onPageFinished(String value) {
    setState(() {
      isLoadingState = 0;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocBuilder<VerificationBloc, VerificationState>(builder: (ctx, state) {
      if (state is Verified && state.phoneVerified) {
        return Container(
            color: Colors.white,
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                final data = list[index];
                return MissionListTile(
                  idx: index,
                  thumbnail: data['thumbnail'],
                  title: data['title'],
                  subTitle: data['title'],
                );
              },
            ));
      } else {
        return UnverifiedPage();
      }
    });
  }
}
