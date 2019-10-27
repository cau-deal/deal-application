import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  @override
  ReportPageState createState() {
    return ReportPageState();
  }
}

class ReportPageState extends State<ReportPage> {
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
    return CommonAppBarContainer(
        text: '신고하기',
        child: Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              children: <Widget>[
                Container(
                    height: 55.0 * list.length,
                    color: Colors.transparent,
                    child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (BuildContext context, int index) {
                        final String label = list[index]['title'];
                        return Container(
                            height: 55,
                            alignment: Alignment.centerLeft,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    padding: EdgeInsets.zero,
                                    child: Theme(
                                        data: ThemeData(unselectedWidgetColor: Color(0xffCECECE)),
                                        child: new Checkbox(
                                          value: false,
                                          onChanged: (val) {},
                                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                          activeColor: Color(0xff5F75AC),
                                        ))),
                                Container(
                                    child: Expanded(
                                  child: Container(
                                      padding: EdgeInsets.only(top: 4.0),
                                      child: new RichText(
                                        text: TextSpan(children: <TextSpan>[
                                          TextSpan(
                                              text: label,
                                              style: TextStyle(
                                                  fontSize: 13, height: 1.8, color: Color(0xff333333), fontWeight: FontWeight.w300, fontFamily: "NanumSquare"),
                                              recognizer: new TapGestureRecognizer()..onTap = () {}),
                                        ]),
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.fade,
                                        maxLines: 2,
                                      )),
                                )),
                              ],
                            ));
                      },
                    )),
                StyledTextFormField(
                  placeholder: '기타 사유',
                ),
                Container(
                    padding: EdgeInsets.only(top: 30),
                    child: WhiteRoundButton(
                        buttonColor: Color(0xFF5f75ac),
                        textColor: Colors.white,
                        text: '신고하기',
                        onPressed: () {
                          Navigator.pop(ctx);
                        }))
              ],
            )));
  }
}
