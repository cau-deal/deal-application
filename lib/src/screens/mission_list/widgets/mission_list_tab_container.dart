import 'package:deal/src/custom/widgets/under_circle_tab_bar.dart';
import 'package:deal/src/screens/mypage/mypage.dart';
import 'package:flutter/material.dart';

import 'animated_count.dart';


class MissionListTabContainer extends StatelessWidget {

  final List<Widget> children;

  MissionListTabContainer({
    Key key,
    @required this.children,
  }) : assert(children != null), super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return [
                SliverAppBar(
                  expandedHeight: 80.0,
                  elevation: 0,
                  backgroundColor: Colors.white,
                  floating: true,
                  pinned: true,
                  snap: true,
                  title: Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: AnimatedCount(
                        count: 3000,
                        duration: Duration(microseconds: 1000),
                      )
                  ),
                  titleSpacing: 0,
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(40.0),
                      child: UnderCircleTabBar(
                          items: ["전체 의뢰", "수집하기", "가공하기"]
                      )
                  ),
                  leading: IconButton(
                    icon: Image.asset("res/images/app-logo-black.png"),
                    iconSize: 24,
                    padding: const EdgeInsets.only(left:15.0, top: 10.0),
                    onPressed: () { },
                  ),
                  actions: <Widget>[
                    IconButton(
                        icon: Image.asset("res/images/icon_tune.png"),
                        iconSize: 24
                    ),
                    IconButton(
                        icon: Image.asset("res/images/icon_mypage.png"),
                        iconSize: 24,
                        onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return MyPage();
                          }));
                        }
                    )
                  ],
                )
              ];
            },

            body: TabBarView(
              children: this.children,
            ),
          )
      )
    );
  }
}

