import 'package:deal/src/custom/widgets/badge.dart';
import 'package:deal/src/protos/Datetime.pb.dart';
import 'package:deal/src/protos/DealService.pb.dart';
import 'package:flutter/material.dart';

class QuestionHistoryTile extends StatelessWidget {
  //ExpansionTile(
  //                                title: Text(state.inquiries[index].inquiry.title),
  //                                children: (state.inquiries[index].isComplete)? [
  //                                  Container(
  //                                      child: Text(state.inquiries[index].answer), color:Colors.amber
  //                                  )
  //                                ]: [],
  //                              )

  final InquiryWithAnswer data;

  QuestionHistoryTile(this.data);

  @override
  Widget build(BuildContext context) {
    Datetime d = this.data.createdAt;

    return Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Badge(
                      text: (this.data.isComplete) ? '답변완료' : '답변대기',
                      color: (this.data.isComplete) ? Color(0xffF7CF00) : Colors.black26,
                    ),
                    SizedBox(width: 8),
                    Text(this.data.inquiry.title, style: TextStyle(color: Color(0xff333333), fontSize: 18, fontWeight: FontWeight.w400))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "${d.year}-${d.month}-${d.day} ${d.hour}:${d.min}",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                )
              ],
            ),
            children: [
              Container(
                height: 150,
                color: Colors.white,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Container(
                    padding: EdgeInsets.all(10), color: Color(0xffeeeeee), child: Text(this.data.inquiry.contents, style: TextStyle(color: Colors.black54))),
              ),
              (this.data.isComplete)
                  ? Container(
                      color: Colors.white,
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: Container(
                          padding: EdgeInsets.all(10),
                          color: Color(0xffeeeeee),
                          child: Text(this.data.answer, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600))),
                    )
                  : Container()
            ]));
  }
}
