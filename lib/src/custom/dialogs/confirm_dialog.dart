import 'package:flutter/material.dart';

enum ConfirmAction { CANCEL, DELETE, ACCEPT }

class ConfirmDialog extends StatefulWidget {
  final String title;
  final String content;
  final bool ternary;

  const ConfirmDialog({Key key, this.content = " ", this.title, this.ternary = false}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ConfirmDialogState();
}

class ConfirmDialogState extends State<ConfirmDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            appBarTheme: AppBarTheme(brightness: Brightness.light),
            brightness: Brightness.light,
            buttonColor: Colors.black,
            textTheme: TextTheme(
                subhead: TextStyle(color: Colors.black),
                caption: TextStyle(color: Colors.black),
                title: TextStyle(color: Colors.black),
                body1: TextStyle(color: Colors.black)),
            iconTheme: IconThemeData(color: Colors.black)),
        child: WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              elevation: 0,
              backgroundColor: Colors.white,
              contentTextStyle: TextStyle(color: Colors.black, fontSize: 16.0),
              contentPadding: const EdgeInsets.only(top: 20.0, left: 20, right: 20, bottom: 5),
              content: Text(widget.content),
              actions: (widget.ternary)
                  ? [
                      FlatButton(
                        child: Text('취소'),
                        onPressed: () {
                          Navigator.of(context).pop(ConfirmAction.CANCEL);
                        },
                      ),
                      FlatButton(
                        child: Text('삭제'),
                        onPressed: () {
                          Navigator.of(context).pop(ConfirmAction.DELETE);
                        },
                      ),
                      FlatButton(
                        child: Text('확인'),
                        onPressed: () {
                          Navigator.of(context).pop(ConfirmAction.ACCEPT);
                        },
                      ),
                    ]
                  : [
                      FlatButton(
                        child: Text('취소'),
                        onPressed: () {
                          Navigator.of(context).pop(ConfirmAction.CANCEL);
                        },
                      ),
                      FlatButton(
                        child: Text('확인'),
                        onPressed: () {
                          Navigator.of(context).pop(ConfirmAction.ACCEPT);
                        },
                      ),
                    ],
            )));
  }
}
