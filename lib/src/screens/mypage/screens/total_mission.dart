import 'package:deal/src/blocs/verified/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
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

  void _onPageFinished(String value) {
    setState(() { isLoadingState = 0; });
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocBuilder<VerificationBloc, VerificationState>(
        builder: (ctx, state){
          if(state is PhoneVerified){
            return Container(
              alignment: Alignment.center,
              child: GestureDetector(
                child: Center(
                    child : SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("res/images/logo-grey.png", height: 150),
                          SizedBox(height: 20),
                          Text(
                            "이곳은 내 전체 의뢰 목록 조회 페이지입니다.",
                            style: TextStyle(
                                color: Color(0xff909090),
                                fontFamily: "NanumSquare",
                                fontSize: 16,
                                letterSpacing: -0.5,
                                height: 1.5
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Text(
                            S.of(ctx).prompt_phone_auth_button,
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontFamily: "NanumSquare",
                                fontSize: 14,
                                letterSpacing: -0.5,
                                height: 1.5
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                ),
                onTap: (){
                  Navigator.of(ctx).push(
                      MaterialPageRoute(
                          builder: (ctx)=> UnverifiedPhoneAuthPage(),
                          fullscreenDialog: true
                      )
                  );
                },
              ),
              color: Colors.white,
            );
          } else {
            return UnverifiedPage();
          }
        }
    );
  }


}