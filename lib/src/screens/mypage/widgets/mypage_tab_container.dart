import 'package:deal/src/custom/widgets/under_circle_tab_bar.dart';
import 'package:flutter/material.dart';


class MyPageTabContainer extends StatefulWidget {
  final Widget header;
  final List<String> items;
  final Widget tabBarView;
  final TabController tabController;

  MyPageTabContainer({
    @required this.tabController,
    @required this.header,
    @required this.items,
    @required this.tabBarView
  }) : assert(tabController != null),
        assert(tabBarView != null),
        assert(items != null);

  @override
  MyPageTabContainerState createState() => MyPageTabContainerState();

}

class MyPageTabContainerState extends State<MyPageTabContainer> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
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
                    Container(height:150, color: Colors.white, child: widget.header),
                    Container(height:30,  color: Color(0xffeeeeee))
                  ],
                ),
              ),
              titleSpacing: 0,
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(40.0),
                  child: UnderCircleTabBar(
                    items: widget.items,
                    controller: widget.tabController,
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

        body: widget.tabBarView,
      )
    );

    /*return Scaffold(
      body: DefaultTabController(
          length: widget.items.length,
          initialIndex: 0,
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
                        Container(height:150, color: Colors.white, child: widget.header),
                        Container(height:30,  color: Color(0xffeeeeee))
                      ],
                    ),
                  ),
                  titleSpacing: 0,
                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(40.0),
                      child: UnderCircleTabBar(
                          items: widget.items
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

            body: widget.tabBarView,
          )
      )
    );*/
  }
}

