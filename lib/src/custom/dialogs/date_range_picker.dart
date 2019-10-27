import 'package:flutter/material.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';

class DateRangePickerDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DateRangePickerDialogState();
}

class DateRangePickerDialogState extends State<DateRangePickerDialog> {
  DateTime _firstDate = DateTime.now();
  DateTime _lastDate = DateTime.now().add(Duration(days: 90));
  DatePeriod _selectedPeriod;

  Color selectedPeriodMiddleColor = Colors.amber;

  @override
  void initState() {
    this._selectedPeriod = DatePeriod(_firstDate, _firstDate.add(Duration(days: 7)));
    super.initState();
  }

  void _onSelectedDateChanged(DatePeriod newPeriod) {
    setState(() {
      _selectedPeriod = newPeriod;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color selectedColor = Theme.of(context).accentColor;

    DatePickerRangeStyles styles = DatePickerRangeStyles(
      selectedSingleDateDecoration: BoxDecoration(color: selectedColor, borderRadius: BorderRadius.all(Radius.circular(20))),
      defaultDateTextStyle: TextStyle(color: Colors.black),
      selectedPeriodLastDecoration:
          BoxDecoration(color: selectedColor, borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), bottomRight: Radius.circular(20.0))),
      selectedPeriodStartDecoration: BoxDecoration(
        color: selectedColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0)),
      ),
      selectedPeriodMiddleDecoration: BoxDecoration(color: selectedColor, shape: BoxShape.rectangle),
    );

    DatePickerLayoutSettings settings = DatePickerLayoutSettings(maxDayPickerRowCount: 5);

    return Theme(
        data: Theme.of(context).copyWith(
            appBarTheme: AppBarTheme(brightness: Brightness.dark),
            brightness: Brightness.dark,
            disabledColor: Colors.black12,
            textTheme: TextTheme(subhead: TextStyle(color: Colors.black), caption: TextStyle(color: Colors.black)),
            iconTheme: IconThemeData(color: Colors.black)),
        child: AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          elevation: 0,
          backgroundColor: Colors.white,
          contentTextStyle: TextStyle(color: Colors.black45),
          contentPadding: const EdgeInsets.all(15.0),
          content: RangePicker(
            datePickerLayoutSettings: settings,
            selectedPeriod: _selectedPeriod,
            onChanged: _onSelectedDateChanged,
            firstDate: _firstDate,
            lastDate: _lastDate,
            datePickerStyles: styles,
          ),
          actions: [
            FlatButton(
              child: Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop(null);
              },
            ),
            FlatButton(
              child: Text('SUBMIT'),
              onPressed: () {
                Navigator.of(context).pop(_selectedPeriod);
              },
            ),
          ],
        ));
  }
}
