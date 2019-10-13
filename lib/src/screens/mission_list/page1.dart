import 'package:deal/src/screens/mission_detail/mission_detail.dart';
import 'package:deal/src/screens/mission_list/widgets/mission_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';



class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  var list = List();

  RefreshController _refreshController = RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async{
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    if(mounted)
      setState(() {

      });
    _refreshController.loadComplete();
  }

  @override
  void initState() {
    super.initState();
    list = [
      /*{
        "top": true,
        "title": "의뢰 등록하기",
        "body": "데이터가 필요하세요? 의뢰를 등록해보세요!",
        "thumbnail": "res/images/deal-thumbnail.png"
      },*/
      { "title": "위에서 아래로", "body": "쭉 땡겨봐여", "cost": 123 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 50 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 100 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 1000 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 100 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 100 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 100 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 100 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 100 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 100 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 100 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 100 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 100 },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!", "cost": 100 },
    ];


  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: SmartRefresher(
          enablePullUp: false,
          enablePullDown: true,
          controller: _refreshController,
          header: WaterDropHeader(),
          onRefresh: _onRefresh,
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              final data = list[index];
              return MissionListTile(
                idx: index,
                isTopMission: data['top'] == null? false : true,
                thumbnail: data['thumbnail'] == null? "res/images/default_thumbnail.png" : data['thumbnail'],
                title: data['title'],
                subTitle: data['body'],
                cost: data['cost'],
              );
            },
          )
        )
    );
  }
}