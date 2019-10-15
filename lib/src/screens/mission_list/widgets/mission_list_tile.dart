import 'package:deal/src/screens/mission_create/mission_create.dart';
import 'package:deal/src/screens/mission_detail/mission_detail.dart';
import 'package:flutter/material.dart';


class MissionListTile extends StatelessWidget {

  final int idx;
  final int cost;
  final String thumbnail;
  final String title;
  final String subTitle;
  final bool isTopMission;

  const MissionListTile({
    Key key,
    this.thumbnail, this.title, this.subTitle,
    this.idx, this.cost = 0, this.isTopMission = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 96,
      padding: EdgeInsets.only(left:15, right:15),
      child: GestureDetector(
          onTap: (){
            Navigator.push(
                context, MaterialPageRoute(builder:(ctx) =>
                          (!this.isTopMission)? MissionDetailPage(idx: idx) : MissionCreatePage(idx: idx)
            ));
          },
          child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(left:10),
              child: Row(
                children: <Widget>[
                  Container(
                      color: Colors.white,
                      child: Hero(
                        tag: 'mission_list_thumbnail_$idx',
                        child: Container(
                          width: 64,
                          height: 64,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage( this.thumbnail ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        )
                      )
                  ),
                  Expanded(child: Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: double.infinity,
                            child: Text(this.title, style: TextStyle(fontFamily:"NanumSquare", fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16, decoration: TextDecoration.none)),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 5,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Text(this.subTitle, style: TextStyle(fontFamily:"NanumSquare", color: Colors.black54, fontSize: 13, decoration: TextDecoration.none)),
                          ),
                        ],
                      )
                  )),
                  if (!this.isTopMission) Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(width: 32, height: 32, child: IconButton(
                            icon: Image.asset("res/images/app-logo-black.png"),
                            iconSize: 32,
                            padding: EdgeInsets.all(0),
                          )),
                          Text("$cost", style: TextStyle(letterSpacing:-0.5, fontSize: 15, color: Color(0xff333333),))
                        ],
                      )
                  )
                ],
              )
          )
      ),
    );
  }

}