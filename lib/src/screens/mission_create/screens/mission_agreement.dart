import 'dart:convert';

import 'package:deal/src/custom/widgets/badge.dart';
import 'package:deal/src/screens/mission_detail/modules/custom_image_delegate.dart';
import 'package:deal/src/screens/mission_detail/widget/content_header.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zefyr/zefyr.dart';
import 'package:quill_delta/quill_delta.dart';

import 'mission_create_editor.dart';

class MissionAgreementPage extends StatefulWidget {

  @override
  MissionAgreementPageState createState() => MissionAgreementPageState();
}


class MissionAgreementPageState extends State<MissionAgreementPage>
    with AutomaticKeepAliveClientMixin<MissionAgreementPage> {

  NotusDocument doc;

  @override
  void initState() {
    super.initState();
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
            ContentHeader(label: "약관"),
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
                              textStyle: TextStyle(fontSize: 16.0,
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
                            height: 310,
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color(0xffeeeeee)
                            ),
                            child: Text("고지할 약관을 입력해주세요.", style: TextStyle(color: Colors.black),)
                        )
                    )
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

  @override
  bool get wantKeepAlive => true;
}