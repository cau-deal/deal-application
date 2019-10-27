import 'package:deal/src/screens/mypage/widgets/message_list_tile.dart';
import 'package:flutter/material.dart';

class MyMessageListView extends StatelessWidget {
  final TabController tabController;

  const MyMessageListView({Key key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var list = [
      {"title": "새로운 공지사항이 등록되었습니다", "date": "2019-10-14"},
      {"title": "새로운 공지사항이 등록되었습니다", "date": "2019-10-12"},
    ];

    return TabBarView(
      controller: tabController,
      children: <Widget>[
        Center(
            child: Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.white,
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (BuildContext context, int index) {
                        final data = list[index];
                        return MessageListTile(idx: index, title: data['title'], date: data['date']);
                      },
                    )))),
        Center(
            child: Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.white,
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (BuildContext context, int index) {
                        final data = list[index];
                        return MessageListTile(idx: index, title: data['title'], date: data['date']);
                      },
                    )))),
        Center(
            child: Container(
                padding: EdgeInsets.only(top: 10),
                color: Colors.white,
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (BuildContext context, int index) {
                        final data = list[index];
                        return MessageListTile(idx: index, title: data['title'], date: data['date']);
                      },
                    )))),
      ],
    );
  }
}
