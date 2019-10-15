import 'package:deal/src/screens/mission_detail/mission_detail.dart';
import 'package:flutter/material.dart';


class MessageListTile extends StatelessWidget {

  final int idx;
  final String title;
  final String date;

  const MessageListTile({
    Key key,
    this.title,
    this.idx,
    this.date
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 40,
      padding: EdgeInsets.only(left:15, right:15),
      child: GestureDetector(
          onTap: (){
            Navigator.push(
                context, MaterialPageRoute(builder:(ctx) => MissionDetailPage(idx: idx))
            );
          },
          child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(left:10, right: 10),
              child: Row(
                children: <Widget>[
                  Expanded(child: Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: double.infinity,
                            child: Text(this.title, style: TextStyle(fontFamily:"NanumSquare", color: Colors.black, fontSize: 13, decoration: TextDecoration.none)),
                          ),
                        ],
                      )
                  )),
                  Text(date, style: TextStyle(color: Color(0xff5F75AC), fontSize: 13))
                ],
              )
          )
      ),
    );
  }

}