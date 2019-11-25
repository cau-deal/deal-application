import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/screens/mission_create/widget/content_header.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PointCreditPage extends StatefulWidget {
  @override
  PointCreditPageState createState() {
    return PointCreditPageState();
  }
}

class PointCreditPageState extends State<PointCreditPage> {
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
  }

  @override
  Widget build(BuildContext ctx) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext ctx, bool b){
        return [
          SliverAppBar(
            brightness: Brightness.light,
            elevation: 0,
            backgroundColor: Colors.white,
            bottom: PreferredSize(
                child: Container(
                  height: 120,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("충전할 금액을 입력해주세요.", style: TextStyle(color: Colors.black87, fontSize: 16)),
                      SizedBox(height: 15),
                      Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xffF7CF00),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          )
                      )
                    ],
                  ),
                ),
                preferredSize: Size.fromHeight(120.0)
            ),
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            title: IconButton(
                onPressed: () { Navigator.pop(context); },
                icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 15)
            ),
          )
        ];
      },
      body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 0),
          child: Column(
            children: <Widget>[
              Container(color: Color(0xffeeeeee), height: 15),
              Container(color: Colors.white, height: 100),
              Container(color: Color(0xffeeeeee), height: 15),
              Expanded(
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ContentHeader(label: "개인정보 수집 및 이용 동의"),
                          SizedBox(height: 15),
                          Container(
                            height: 300,
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in trud exercitation ullamco laboris nisi ut aliquip ex ea commod",
                              style: TextStyle(fontSize: 14, color: Colors.black87, decoration: TextDecoration.none, fontFamily: "NanumSquare", fontWeight: FontWeight.w500, height: 1.5)
                            ),
                          )
                        ],
                      )
                  )
              ),
              Container(color: Color(0xffeeeeee), height: 15),
              Container(
                  color: Colors.white,
                  height: 70,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: WhiteRoundButton(
                    buttonColor: Color(0xFF5f75ac),
                    textColor: Colors.white,
                    text: '동의/결제',
                    onPressed: (){},
                  )
              ),
            ],
          )
      ),
    );
  }
}
