import 'dart:convert';

import 'package:deal/src/custom/widgets/badge.dart';
import 'package:deal/src/screens/mission_detail/modules/custom_image_delegate.dart';
import 'package:deal/src/screens/mission_detail/widget/content_header.dart';
import 'package:flutter/material.dart';
import 'package:zefyr/zefyr.dart';
import 'package:quill_delta/quill_delta.dart';

import 'mission_create_editor.dart';

class MissionExplainPage extends StatefulWidget {

  @override
  MissionExplainPageState createState() => MissionExplainPageState();
}


class MissionExplainPageState extends State<MissionExplainPage>
    with AutomaticKeepAliveClientMixin<MissionExplainPage> {

  NotusDocument doc;

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
            ContentHeader(label: "수행방법"),
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