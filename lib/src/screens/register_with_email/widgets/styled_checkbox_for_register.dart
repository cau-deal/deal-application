import 'package:deal/generated/i18n.dart';
import 'package:deal/src/screens/agreements/agreements.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CommonTextStyle {
  static TextStyle display1(BuildContext ctx) {
    return TextStyle(fontSize: 13, height: 1.8, color: Color(0xff333333), fontWeight: FontWeight.w300, fontFamily: "NanumSquare");
  }

  static TextStyle display2(BuildContext ctx) {
    return CommonTextStyle.display1(ctx).copyWith(decoration: TextDecoration.underline);
  }
}

class StyledCheckboxForRegister extends StatefulWidget {
  final bool value;
  final Function onChanged;

  StyledCheckboxForRegister({@required this.value, @required this.onChanged});

  @override
  StyledCheckboxStateForRegister createState() => new StyledCheckboxStateForRegister();
}

class StyledCheckboxStateForRegister extends State<StyledCheckboxForRegister> {
  StyledCheckboxStateForRegister();

  void onTap(BuildContext ctx) {
    Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => AgreementsPage()));
  }

  @override
  Widget build(BuildContext context) {
    TextStyle _labelTextStyle = CommonTextStyle.display1(context);
    TextStyle _labelTextStyle2 = CommonTextStyle.display2(context);

    return new Container(
        padding: EdgeInsets.zero,
//      color: Colors.pinkAccent,
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.zero,
                child: Theme(
                    data: ThemeData(unselectedWidgetColor: Color(0xffCECECE)),
                    child: new Checkbox(
                      value: widget.value,
                      onChanged: widget.onChanged,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      activeColor: Color(0xff5F75AC),
                    ))),
            Container(
                child: Expanded(
              child: Container(
                  padding: EdgeInsets.only(top: 4.0),
                  child: new RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(text: S.of(context).agreement_register1, style: _labelTextStyle, recognizer: new TapGestureRecognizer()..onTap = () {}),
                      TextSpan(
                          text: S.of(context).agreements,
                          style: _labelTextStyle2,
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              onTap(context);
                            }),
                      TextSpan(text: ", ", style: _labelTextStyle),
                      TextSpan(
                          text: S.of(context).personal_information_agreements,
                          style: _labelTextStyle2,
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              onTap(context);
                            }),
                      TextSpan(text: ", ", style: _labelTextStyle),
                      TextSpan(
                          text: S.of(context).location_information_agreements,
                          style: _labelTextStyle2,
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              onTap(context);
                            }),
                      TextSpan(text: S.of(context).agreement_register2, style: _labelTextStyle, recognizer: new TapGestureRecognizer()..onTap = () {})
                    ]),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.fade,
                    maxLines: 3,
                  )),
            )),
          ],
        ));
  }
}
