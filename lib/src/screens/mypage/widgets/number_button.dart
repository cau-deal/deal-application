import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LabelNumberButton extends StatelessWidget {
  final String title;
  final int number;
  final Function() onPressed;

  LabelNumberButton({
    @required this.title,
    @required this.number,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext ctx) {

    final formatCurrency = NumberFormat('###,###,###,###');

    return ButtonTheme(
        height: 46,
        minWidth: double.infinity,
        child: FlatButton(
            color: Colors.transparent,
            onPressed: onPressed,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(alignment: Alignment.centerLeft, child: Text(
                    this.title,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
                ),
                SizedBox(height: 3),
                Align(alignment: Alignment.centerLeft, child: Text(
                    '${formatCurrency.format(this.number)}',
                    style: TextStyle(fontSize: 12))
                )
              ],
            )));
  }
}
