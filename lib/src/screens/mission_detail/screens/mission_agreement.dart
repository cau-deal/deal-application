import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/screens/mission_detail/modules/custom_image_delegate.dart';
import 'package:deal/src/screens/mission_detail/widget/content_header.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quill_delta/quill_delta.dart';
import 'package:zefyr/zefyr.dart';

class MissionAgreementPage extends StatefulWidget {
  @override
  MissionAgreementPageState createState() => MissionAgreementPageState();
}

class MissionAgreementPageState extends State<MissionAgreementPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MissionDetailBloc, MissionDetailState>(
      builder: (ctx, state){
        return Container(
            padding: EdgeInsets.only(left: 15, right: 15, top: 30),
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
                        document: NotusDocument.fromDelta(Delta()..insert(
                          state.missionTerms.replaceAll("⏎", "\n").replaceAll("¶ ", "")
                        )),
                        imageDelegate: CustomImageDelegate(),
                      ),
                    )),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.zero,
                        child: Theme(
                            data: ThemeData(unselectedWidgetColor: Color(0xffCECECE)),
                            child: new Checkbox(
                              value: true,
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
                                      text: '약관에 동의합니다',
                                      style: TextStyle(fontSize: 13, height: 1.8, color: Color(0xff333333), fontWeight: FontWeight.w300, fontFamily: "NanumSquare"),
                                      recognizer: new TapGestureRecognizer()..onTap = () {}),
                                ]),
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.fade,
                                maxLines: 2,
                              )),
                        )),
                  ],
                )
              ],
            ));
      }
    );
  }
}
