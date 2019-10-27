import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:flutter/material.dart';

class MissionSearchPage extends StatefulWidget {
  @override
  MissionSearchPageState createState() {
    return MissionSearchPageState();
  }
}

class MissionSearchPageState extends State<MissionSearchPage> {
  var list = [
    {"title": "비속어 및 공격적인 언어 사용"},
    {"title": "권리침해 및 사이버 괴롭힘"},
    {"title": "명의 도용"},
    {"title": "폭력적 위협"},
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext ctx) {
    return CommonAppBarContainer(
        text: null,
        header: TextFormField(
          autofocus: true,
          scrollPadding: EdgeInsets.zero,
          decoration: InputDecoration.collapsed(
            hintText: '검색',
            fillColor: Colors.white,
            hasFloatingPlaceholder: true,
            hintStyle: TextStyle(fontSize: 16, color: Color(0xffAEAEAE), height: 1.0, textBaseline: TextBaseline.ideographic),
          ),
          style: TextStyle(fontSize: 16, color: Colors.black, height: 1.0, fontWeight: FontWeight.w600, textBaseline: TextBaseline.alphabetic),
        ),
        actions: <Widget>[IconButton(icon: Icon(Icons.search, color: Colors.black))],
        child: Container(
            padding: EdgeInsets.only(left: 20, right: 15, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("최근 검색어", style: TextStyle(fontSize: 16, height: 1.8, color: Color(0xff333333), fontWeight: FontWeight.w600, fontFamily: "NanumSquare")),
                Container(height: 35.0 * list.length, color: Colors.transparent, child: null),
                Text("인기 검색어", style: TextStyle(fontSize: 16, height: 1.8, color: Color(0xff333333), fontWeight: FontWeight.w600, fontFamily: "NanumSquare")),
              ],
            )));
  }
}
