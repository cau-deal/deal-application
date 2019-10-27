import 'package:deal/src/blocs/mission_create/bloc.dart';
import 'package:deal/src/screens/mission_detail/modules/custom_image_delegate.dart';
import 'package:deal/src/screens/mission_detail/widget/content_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zefyr/zefyr.dart';

import 'mission_create_editor.dart';

class MissionExplainPage extends StatefulWidget {
  @override
  MissionExplainPageState createState() => MissionExplainPageState();
}

class MissionExplainPageState extends State<MissionExplainPage> with AutomaticKeepAliveClientMixin<MissionExplainPage> {
  NotusDocument doc;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ContentHeader(label: "수행방법"),
            Container(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                    onTap: () async {
                      var _doc = await Navigator.push(context, MaterialPageRoute(builder: (ctx) => MissionCreateEditor(doc: doc), fullscreenDialog: true));
                      setState(() { if (_doc != null) doc = _doc; });
                      BlocProvider.of<MissionCreateBloc>(context).add(MissionInstructionChanged(_doc.toString()));
                    },
                    child: ZefyrTheme(
                        data: ZefyrThemeData(
                          paragraphTheme:
                              StyleTheme(textStyle: TextStyle(fontSize: 16.0, height: 1.25, fontWeight: FontWeight.normal, color: Colors.grey.shade800)),
                        ),
                        child: (doc != null)
                            ? ZefyrView(
                                document: doc,
                                imageDelegate: CustomImageDelegate(),
                              )
                            : Container(
                                height: 350,
                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(color: Color(0xffeeeeee)),
                                child: Text(
                                  "수행 방법을 입력해주세요.",
                                  style: TextStyle(color: Colors.black),
                                ))))),
          ],
        ));
  }

  @override
  bool get wantKeepAlive => true;
}
