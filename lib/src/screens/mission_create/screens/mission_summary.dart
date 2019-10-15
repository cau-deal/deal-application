import 'dart:convert';

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

  var doc;

  @override
  void initState() {
    super.initState();
    doc = NotusDocument.fromDelta(
        Delta()..insert(
            "여기 있는 항목은 markdown rendering 되었습니다.\n"
                "여기 있는 항목은 markdown rendering 되었습니다.\n"
                "여기 있는 항목은 markdown rendering 되었습니다.\n"
        )
    );
  }

  @override
  Widget build(BuildContext context) {
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
              child: Row(
                children: <Widget>[
                  Container(
                    child: MissionCreateTextFormField(
                        placeholder: "목표 건수",
                        textSize: 18,
                        textAlign: TextAlign.right,
                        textInputType: TextInputType.number
                    ),
                    width: 80
                  ),
                  Text(" 건", style: TextStyle(color: Color(0xFF333333), fontSize: 18, fontWeight: FontWeight.w700)),
                ]
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
                      MaterialPageRoute(builder:(ctx) => MissionCreateEditor(doc: doc), fullscreenDialog: true)
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
                  child: ZefyrView(
                    document: doc,
                    imageDelegate: CustomImageDelegate(),
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