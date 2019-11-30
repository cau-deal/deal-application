import 'package:deal/src/blocs/mypage/bloc.dart';
import 'package:deal/src/custom/widgets/under_circle_tab_bar.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/misson_search/mission_search.dart';
import 'package:deal/src/screens/mypage/mypage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'animated_count.dart';

class MissionListTabContainer extends StatelessWidget {
  final List<Widget> children;

  MissionListTabContainer({
    Key key,
    @required this.children,
  })  : assert(children != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 3,
            child: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    expandedHeight: 80.0,
                    elevation: 0,
                    backgroundColor: Colors.white,
                    floating: true,
                    pinned: true,
                    snap: true,
                    brightness: Brightness.light,
                    title: Container(
                        padding: EdgeInsets.only(top: 10.0),
                        child: AnimatedCount(
                          count: 3000,
                          duration: Duration(microseconds: 1000),
                        )),
                    titleSpacing: 0,
                    bottom: PreferredSize(preferredSize: Size.fromHeight(40.0), child: UnderCircleTabBar(items: ["전체 의뢰", "수집하기", "가공하기"])),
                    leading: SizedBox(
                        width: 24,
                        height: 24,
                        child: IconButton(
                          icon: Image.asset("res/images/app-logo-black.png"),
                          iconSize: 24,
                          padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                          onPressed: () {},
                        )),
                    actions: <Widget>[
                      SizedBox(
                          width: 24,
                          height: 24,
                          child: IconButton(
                            icon: Image.asset("res/images/icon_tune.png"),
                            iconSize: 24,
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) {
                                return BlocProvider<MyPageBloc>(builder: (ctx) => MyPageBloc(
                                  RepositoryProvider.of<UserRepository>(ctx)
                                )..add(MissionClicked()), child: MissionSearchPage());
                              }));
                            },
                          )),
                      SizedBox(width: 5),
                      SizedBox(
                          width: 24,
                          height: 24,
                          child: Stack(
                            children: <Widget>[
                              IconButton(
                                  icon: Image.asset("res/images/icon_mypage.png"),
                                  iconSize: 24,
                                  padding: EdgeInsets.zero,
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                                      return BlocProvider<MyPageBloc>(
                                          builder: (BuildContext ctx) => MyPageBloc(
                                              RepositoryProvider.of<UserRepository>(ctx)
                                          )..add(MyPageInitialized()),
                                          child: MyPage()
                                      );
                                    }));
                                  }
                                  ),
                              /*Positioned(
                                top:0,
                                right:0,
                                width:10,
                                height:10,
                                child: ,
                              )*/
                            ],
                          )
                      ),
                      SizedBox(width: 15)
                    ],
                  )
                ];
              },
              body: TabBarView(
                children: this.children,
              ),
            )));
  }
}
