import 'package:deal/src/protos/Datetime.pb.dart';
import 'package:deal/src/protos/PointService.pb.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PointHistoryTile extends StatefulWidget {

  final PointHistory pointHistory;
  final bool forPlusHistory;

  const PointHistoryTile({Key key, this.pointHistory, this.forPlusHistory}) : super(key: key);

  @override
  State createState() => PointHistoryTileState();
}


class PointHistoryTileState extends State<PointHistoryTile> {

  final NumberFormat formatCurrency = NumberFormat('###,###,###,###');

  final reasonMap = {
    PointAlterReason.UNKNOWN_POINT_ALTER_REASON : "출처를 알 수 없음",
    PointAlterReason.DEPOSIT: "포인트 입금",
    PointAlterReason.WITHDRAW: "포인트 출금",
    PointAlterReason.PLUS_EVENT: "포인트 이벤트",
    PointAlterReason.MINUS_EVENT: "포인트 소모",
  };

  String convertDateTimeToString(Datetime d){
    return "${d.year}.${d.month}.${d.day}";
  }

  String signingHistory(int val){
    return (widget.forPlusHistory)
        ? "+${formatCurrency.format(val)}"
        : "-${formatCurrency.format(val)}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 45,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(reasonMap[widget.pointHistory.pointAlterReason], style: TextStyle(color: Colors.black)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(signingHistory(widget.pointHistory.val.toInt()), style: TextStyle(color: Colors.black)),
                  Text("${convertDateTimeToString(widget.pointHistory.createdAt)}", style: TextStyle(color: Colors.black54, fontSize: 12)),
                ],
              )
            ],
          )
      )
    );
  }
}

//
//child: Container(
//color: Colors.white,
//child: Column(
//mainAxisAlignment: MainAxisAlignment.center,
//children: <Widget>[
//SizedBox(
//width: double.infinity,
//child: Text('test',
//style: TextStyle(
//fontFamily: "NanumSquare",
//fontWeight: FontWeight.w600,
//color: Colors.black,
//fontSize: 16,
//decoration: TextDecoration.none)),
//),
//SizedBox(
//width: double.infinity,
//height: 5,
//),
//SizedBox(
//width: double.infinity,
//child: Text('test',
//style: TextStyle(fontFamily: "NanumSquare", color: Colors.black54, fontSize: 13, decoration: TextDecoration.none)),
//),
//],
//))
