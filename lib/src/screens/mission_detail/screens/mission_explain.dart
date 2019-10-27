import 'package:deal/src/screens/mission_detail/modules/custom_image_delegate.dart';
import 'package:deal/src/screens/mission_detail/widget/content_header.dart';
import 'package:flutter/material.dart';
import 'package:quill_delta/quill_delta.dart';
import 'package:zefyr/zefyr.dart';

class MissionExplainPage extends StatefulWidget {
  @override
  MissionExplainPageState createState() => MissionExplainPageState();
}

class MissionExplainPageState extends State<MissionExplainPage> {
  final doc = NotusDocument.fromDelta(Delta()
    ..insert("여기 있는 항목은 markdown rendering 되었습니다.\n"
        "여기 있는 항목은 markdown rendering 되었습니다.\n"
        "여기 있는 항목은 markdown rendering 되었습니다.\n"));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ContentHeader(label: "수행방법"),
            Container(
              padding: EdgeInsets.all(10),
              child: ZefyrView(
                document: doc,
                imageDelegate: CustomImageDelegate(),
              ),
            ),
          ],
        ));
  }
}
