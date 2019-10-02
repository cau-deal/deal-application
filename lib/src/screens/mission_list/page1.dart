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
      { "title": "위에서 아래로", "body": "쭉 땡겨봐여" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
      { "title": "걷는 곳 주변 사진찍기", "body": "운동도 하고 돈도 벌고 1석 2조!" },
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

              return Container(
                color: Colors.white,
                height: 96,
                padding: EdgeInsets.only(left:15, right:15),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left:10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        child: Container(
                          width: 64,
                          height: 64,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage( "res/images/default_thumbnail.png" ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        )
                      ),
                      Expanded(child: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: double.infinity,
                              child: Text(data['title'], style: TextStyle(fontFamily:"NanumSquare", fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16, decoration: TextDecoration.none)),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Text(data['body'], style: TextStyle(fontFamily:"NanumSquare", color: Colors.black26, fontSize: 13, decoration: TextDecoration.none)),
                            ),
                          ],
                        )
                      ))
                    ],
                  )
                ),
              );
            },
          )
        )
    );
  }
}