import 'dart:convert';

import 'package:deal/src/custom/dialogs/simple_list_dialog.dart';
import 'package:deal/src/custom/widgets/badge.dart';
import 'package:deal/src/screens/mission_create/widget/mission_create_textform_field.dart';
import 'package:deal/src/screens/mission_detail/modules/custom_image_delegate.dart';
import 'package:deal/src/screens/mission_detail/widget/content_header.dart';
import 'package:flutter/material.dart';
import 'package:zefyr/zefyr.dart';
import 'package:quill_delta/quill_delta.dart';

import 'mission_create_editor.dart';

class MissionSummaryPage extends StatefulWidget {

  @override
  MissionSummaryPageState createState() => MissionSummaryPageState();
}


class MissionSummaryPageState extends State<MissionSummaryPage>
    with AutomaticKeepAliveClientMixin<MissionSummaryPage> {

  TextEditingController totalNumController;

  NotusDocument doc;
  String koreanUnit;

  @override
  void initState() {
    super.initState();

    totalNumController = TextEditingController();

    koreanUnit = "영";
    totalNumController.addListener((){
      setState(() {
        koreanUnit = numKorean(totalNumController.text);
      });
    });
  }


  @override
  void dispose() {
    totalNumController.dispose();
    super.dispose();
  }

  String numKorean(String s) {
    var hanA = ["","일","이","삼","사","오","육","칠","팔","구","십"];
    var danA = ["","십","백","천","","십","백","천","","십","백","천","","십","백","천"];
    var result = "";
    for(int i=0; i<s.length; i++) {
      String str = "";
      String han = hanA[int.parse(s[s.length-(i+1)])];
      if(han != "") str += han+danA[i];
      if(i == 4) str += "만";
      if(i == 8) str += "억";
      if(i == 12) str += "조";
      result = str + result;
    }

    if(s.length == 0){ result = "영"; }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
        padding: EdgeInsets.only(left: 15, right:15, top: 30),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ContentHeader(label: "의뢰자"),
            Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Colors.amberAccent,
                          child: ClipOval(
                              child: Image.network('https://picsum.photos/100/100',
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover
                              )
                          ),
                        )
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("이승현", style: TextStyle(color: Color(0xFF333333), fontSize: 14, fontWeight: FontWeight.w700)),
                        SizedBox(height: 5),
                        Badge(text:"Lv. 10", color: Color(0xffF7CF00),)
                      ],
                    )
                  ],
                )
            ),
            SizedBox(height: 25),

            ContentHeader(label: "목표"),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                      children: <Widget>[
                        Container(
                            child: MissionCreateTextFormField(
                              placeholder: "목표",
                              textSize: 19,
                              textAlign: TextAlign.right,
                              textInputType: TextInputType.number,
                              controller: totalNumController,
                            ),
                            width: 90
                        ),
                        Text(" 건", style: TextStyle(color: Color(0xFF333333), fontSize: 18, fontWeight: FontWeight.w700)),
                        Text(" ($koreanUnit 건)", style: TextStyle(color: Color(0xFF999999), fontSize: 14, fontWeight: FontWeight.w500))
                      ]
                  ),
                  SizedBox(height: 15),
                  Container(
                    color: Color(0xffeeeeee),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding ( 
                          child: Icon(Icons.help, color: Colors.black45,),
                          padding: EdgeInsets.all(5),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                                "의뢰는 입력하신 의뢰 단위로 수행자에게 할당이 됩니다. (의뢰 단위 : 0)\n"
                                "목표건수는 입력하신 의뢰 단위의 배수로 설정이 돼야합니다.\n"
                                "의뢰 등록시 '목표건수 * (포인트/단위) + 수수료' 포인트가 사용됩니다. (소모 예상 포인트 : 0)",
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
            SizedBox(height: 25),

            ContentHeader(label: "의뢰 종류"),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                        children: <Widget>[
                          GestureDetector(
                              onTap: () async{
                                String _result = await showDialog(context: context, builder: (ctx)=> SimpleListDialog(
                                  title: '데이터 종류',
                                  options: ['설문조사', '이미지 라벨링', '음성'],
                                ));
                              },
                              child: Text("데이터 종류", style: TextStyle(color: Color(0xff999999)),)
                          ),
                          SizedBox(width: 5,),
                          Badge(text: "카테고리", fontSize: 14,)
                        ]
                    ),
                    SizedBox(height: 15),
                  ],
                )
            ),
            SizedBox(height: 25),

            ContentHeader(label: "의뢰 설명"),

            Container(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () async{
                  var _doc = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(ctx) => MissionCreateEditor(doc: doc),
                          fullscreenDialog: true
                      )
                  );
                  setState(() { if(_doc != null) doc = _doc; });
                },
                child: ZefyrTheme(
                  data: ZefyrThemeData(
                    paragraphTheme: StyleTheme(
                        textStyle: TextStyle(
                            fontSize: 16.0,
                            height: 1.25,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey.shade800
                        )
                    ),
                  ),
                  child: (doc != null)? ZefyrView(
                    document: doc,
                    imageDelegate: CustomImageDelegate(),
                  ): Container(
                    height: 150,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xffeeeeee)
                    ),
                    child: Text("의뢰 설명을 입력해주세요.", style: TextStyle(color: Colors.black),)
                  )
                )
              )
            ),

          ],
        )
    );
  }

  @override
  bool get wantKeepAlive => true;
}