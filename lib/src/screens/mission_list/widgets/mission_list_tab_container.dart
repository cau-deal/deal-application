import 'package:flutter/material.dart';

import './mission_list_tab_bar.dart';


class MissionListTabContainer extends StatelessWidget {

  final List<Widget> children;

  MissionListTabContainer({
    @required this.children,
  }) : assert(children != null);

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
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
                  child: RichText(
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: "3,000",
                              style: TextStyle(
                                fontFamily: "NanumSquare",
                                fontSize: 16.0,
                                color: Colors.black,
                                letterSpacing: -1.0,
                                fontWeight: FontWeight.w600
                              ),
                          ),
                          TextSpan(
                              text: " / today",
                              style: TextStyle(
                                  fontFamily: "NanumSquare",
                                  fontSize: 13.0,
                                  color: Color(0xffAEAEAE),
                                  letterSpacing: -1.0,
                                  fontWeight: FontWeight.w600
                              ),
                          )
                        ]
                    ),
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.fade,
                    maxLines: 3,
                  )
                ),
                titleSpacing: 0,
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(40.0),
                    child: MissionListTabBar(
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
                      iconSize: 24
                  )
                ],
              )
            ];
          },

          body: TabBarView(
            children: this.children,
          ),
        )
    );
  }
}

