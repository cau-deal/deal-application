import 'package:deal/src/custom/widgets/under_circle_tab_bar.dart';
import 'package:flutter/material.dart';

class MissionCreateTabContainer extends StatefulWidget {

  final int idx;
  final Widget header;
  final List<String> items;
  final Widget tabBarView;

  MissionCreateTabContainer({
    @required this.header,
    @required this.items,
    @required this.tabBarView,
    @required this.idx
  }) : assert(tabBarView != null),
        assert(items != null);

  @override
  MissionCreateTabContainerState createState() => MissionCreateTabContainerState();

}

class MissionCreateTabContainerState extends State<MissionCreateTabContainer> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.items.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
            return [
              SliverAppBar(
                brightness: Brightness.light,
                expandedHeight: 320.0,
                elevation: 0,
                backgroundColor: Colors.white,
                floating: true,
                pinned: true,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      color: Color(0xffe6e6e6),
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 100.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("res/images/default_thumbnail.png"),
                          Text("이미지를 등록해주세요", style: TextStyle(
                              color: Color(0xffb8b8b8),
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.4,
                              fontSize: 18
                          ))
                        ],
                      )
                  )
                ),
                titleSpacing: 0,
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(120.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          height: 80,
                          child: widget.header,
                          padding: EdgeInsets.only(left: 15, right: 15),
                        ),
                        UnderCircleTabBar( items: widget.items )
                      ],
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
          body: Container(
              color: Colors.white,
              child: widget.tabBarView
          ),
        )
    );
  }

}
