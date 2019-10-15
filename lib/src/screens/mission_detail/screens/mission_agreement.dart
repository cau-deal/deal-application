import 'dart:convert';

import 'package:deal/src/custom/widgets/badge.dart';
import 'package:deal/src/screens/mission_detail/modules/custom_image_delegate.dart';
import 'package:deal/src/screens/mission_detail/widget/content_header.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zefyr/zefyr.dart';
import 'package:quill_delta/quill_delta.dart';

class MissionAgreementPage extends StatefulWidget {

  @override
  MissionAgreementPageState createState() => MissionAgreementPageState();
}


class MissionAgreementPageState extends State<MissionAgreementPage> {

  final doc = NotusDocument.fromDelta(
      Delta()..insert(
          "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"
              "여기 있는 항목은 markdown rendering 되었습니다.\n"

      )
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15, right:15, top: 30),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ContentHeader(label: "약관"),
            Container(
                padding: EdgeInsets.all(10),
                height: 500,
                child: SingleChildScrollView(
                  child: ZefyrView(
                    document: doc,
                    imageDelegate: CustomImageDelegate(),
                  ),
                )
              ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.zero,
                    child: Theme(
                        data: ThemeData(
                            unselectedWidgetColor: Color(0xffCECECE)
                        ),
                        child: new Checkbox(
                          value: true,
                          onChanged: (val){},
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          activeColor: Color(0xff5F75AC),
                        )
                    )
                ),
                Container(
                    child: Expanded(
                      child: Container(
                          padding: EdgeInsets.only(top: 4.0),
                          child: new RichText(
                            text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '약관에 동의합니다',
                                      style: TextStyle (
                                          fontSize: 13,
                                          height: 1.8,
                                          color: Color(0xff333333),
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "NanumSquare"
                                      ),
                                      recognizer: new TapGestureRecognizer()..onTap = (){ }
                                  ),
                                ]
                            ),
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.fade,
                            maxLines: 2,
                          )
                      ),
                    )
                ),
              ],
            )
          ],
        )
    );
  }
}