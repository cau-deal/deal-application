import 'package:deal/src/custom/widgets/under_circle_tab_bar.dart';
import 'package:flutter/material.dart';


class MyPageTabContainer extends StatelessWidget {

  final Widget header;
  final List<Widget> children;

  MyPageTabContainer({
    @required this.header,
    @required this.children,
  }) : assert(children != null);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return [
                SliverAppBar(
                  expandedHeight: 240.0,
                  elevation: 0,
                  backgroundColor: Colors.white,
                  floating: true,
                  pinned: true,
                  snap: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Column(
                      children: <Widget>[
                        Container(height:60, color:Colors.white),
                        Container(height:150, color: Colors.white, child: this.header),
                        Container(height:30,  color: Color(0xffeeeeee))
                      ],
                    ),
                  ),
                  titleSpacing: 0,
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(40.0),
                      child: UnderCircleTabBar(
                          items: ["전체 의뢰", "수행중인 의뢰", "등록한 의뢰"]
                      )
                  ),
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    iconSize: 14,
                    padding: const EdgeInsets.only(left:0.0, top: 10.0),
                    onPressed: () { Navigator.pop(context); },
                  ),
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

