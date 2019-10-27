import 'package:flutter/material.dart';

class StyledCheckbox extends StatefulWidget {
  final String label;

  StyledCheckbox(this.label);

  @override
  StyledCheckboxState createState() => new StyledCheckboxState(this.label);
}

class StyledCheckboxState extends State<StyledCheckbox> {
  final String label;
  bool isChecked = false;

  StyledCheckboxState(this.label);

  void onChanged() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                      value: isChecked,
                      onChanged: (val) {
                        onChanged();
                      },
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      activeColor: Color(0xff5F75AC),
                    ))),
            Container(
                child: Expanded(
              child: Container(
                  padding: EdgeInsets.only(top: 8.0),
                  child: new Text(
                    this.label ?? "",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.fade,
                    maxLines: 3,
                    style: new TextStyle(
                      fontSize: 13,
                      height: 1.5,
                      color: Color(0xff333333),
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            )),
          ],
        ));
  }
}
