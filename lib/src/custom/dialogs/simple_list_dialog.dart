import 'package:flutter/material.dart';

class SimpleListDialog<T> extends StatefulWidget {
  final List<Map<String, T>> options;
  final String title;

  const SimpleListDialog({Key key, this.options, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SimpleListDialogState<T>();
}

class SimpleListDialogState<T> extends State<SimpleListDialog> {
  @override
  void initState() {
    super.initState();
  }

  void _onPressed(T value) {
    Navigator.of(context).pop(value);
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            appBarTheme: AppBarTheme(brightness: Brightness.light),
            brightness: Brightness.light,
            disabledColor: Colors.black12,
            buttonColor: Colors.black,
            textTheme: TextTheme(
              subhead: TextStyle(color: Colors.black),
              caption: TextStyle(color: Colors.black),
              title: TextStyle(color: Colors.black),
            ),
            iconTheme: IconThemeData(color: Colors.black)),
        child: SimpleDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          elevation: 0,
          backgroundColor: Colors.white,
          title: (widget.title == null) ? null : Text(widget.title, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700)),
          titlePadding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 15.0, bottom: 2.0),
          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
          children: widget.options
              .map((option) => SimpleDialogOption(
                    child: Container(
                        alignment: Alignment.centerLeft,
                        height: 30,
                        child: Text(
                          "${option.keys.first}",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        )),
                    onPressed: () {
                      _onPressed(option.values.first);
                    },
                  ))
              .toList(),
        ));
  }
}
