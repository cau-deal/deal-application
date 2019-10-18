import 'package:deal/src/blocs/auth/auth_bloc.dart';
import 'package:deal/src/blocs/auth/auth_state.dart';
import 'package:deal/src/blocs/mypage/bloc.dart';
import 'package:deal/src/blocs/verified/bloc.dart';
import 'package:deal/src/screens/mypage/screens/my_message_list.dart';
import 'package:deal/src/screens/mypage/screens/my_mission_list.dart';
import 'package:deal/src/screens/mypage/screens/my_point_list.dart';
import 'package:deal/src/screens/mypage/widgets/number_button.dart';
import 'package:deal/src/screens/preferences/preferences.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/mypage_tab_container.dart';

class MyPage extends StatefulWidget {
  @override
  MyPageScreenState createState() => MyPageScreenState();
}

class MyPageScreenState extends State<MyPage> with TickerProviderStateMixin {

  MyPageBloc _myPageBloc;
  VerificationBloc _verificationBloc;

  List<String> _currentItems;
  Widget _currentTabBarView;
  TabController _tabController;

  AuthenticationState authState;
  String _userEmail;

  @override
  void initState() {
    this._myPageBloc = BlocProvider.of<MyPageBloc>(context);
    this._verificationBloc = BlocProvider.of<VerificationBloc>(context);

    this._userEmail = (_verificationBloc.currentState is Verified)
        ? (_verificationBloc.currentState as Verified).profile.email
        : (_verificationBloc.currentState as UnVerified).userEmail;

    this._currentItems = [];
    this._tabController = TabController(length: this._currentItems.length, vsync: this);
    this._currentTabBarView = TabBarView(children: [], controller: this._tabController);

    super.initState();
  }

  void _onSettingButtonClick(BuildContext ctx){
    Navigator.push(
        ctx,
        MaterialPageRoute( builder: (ctx) => PreferencesPage() )
    );
  }

  void _onPointButtonClicked(BuildContext ctx){
    _myPageBloc.dispatch(PointClicked());
  }

  void _onMissionButtonClicked(BuildContext ctx){
    _myPageBloc.dispatch(MissionClicked());
  }

  void _onMessageButtonClicked(BuildContext ctx){
    _myPageBloc.dispatch(MessageClicked());
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<MyPageBloc, MyPageState>(
     listener: (ctx, state){
          setState((){
            if(state.isPointSection){
              this._currentItems = ['포인트 입금내역', '포인트 출금내역'];
              this._tabController = TabController(length: this._currentItems.length, vsync: this);
              this._currentTabBarView = MyPointListView(tabController: this._tabController);

            } else if(state.isMissionSection) {
              this._currentItems = ['수행중인 의뢰', '등록한 의뢰'];
              this._tabController = TabController(length: this._currentItems.length, vsync: this);
              this._currentTabBarView = MyMissionListView(tabController:this._tabController);
            } else if(state.isMessageSection) {
              this._currentItems = ['읽지 않음', '읽음', '전체'];
              this._tabController = TabController(length: this._currentItems.length, vsync: this);
              this._currentTabBarView = MyMessageListView(tabController:this._tabController);
            }
          });
      },
      child: new MyPageTabContainer(
        tabController: this._tabController,
        items: this._currentItems,
        header: Container(
            color: Colors.white,
            padding: EdgeInsets.only(left:15, right: 15),
            child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                        height: 70,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                child: Container (
                                  padding: EdgeInsets.only(left: 30, top:5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Align(
                                        child: Text("회원님 환영합니다.", style:TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
                                        alignment: Alignment.centerLeft,
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text("$_userEmail", style:TextStyle(fontSize: 12, color: Colors.black54)),
                                          SizedBox(width:8),
                                          SizedBox(
                                              width: 18,
                                              height: 18,
                                              child: IconButton(
                                                icon: Icon(Icons.settings, color: Color(0xff5F75AC)),
                                                iconSize: 18,
                                                padding: EdgeInsets.zero,
                                                onPressed: (){ this._onSettingButtonClick(ctx); },
                                              )
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                            ),
                            Container(
                                height: 70,
                                width: 70,
                                margin: EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 40.0,
                                  backgroundColor: Colors.amberAccent,
                                  child: ClipOval(
                                      child: Image.network('https://picsum.photos/100/100',
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.cover
                                      )
                                  ),
                                )
                            )
                          ],
                        )
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(top:13, bottom:13),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  color: Color(0xff5F75AC)
                              ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              right: BorderSide(
                                                  color: Colors.white,
                                                  width: 1
                                              )
                                          )
                                      ),
                                      child: LabelNumberButton(
                                        title: "포인트",
                                        number: 0,
                                        onPressed: (){ _onPointButtonClicked(ctx); },
                                      ),
                                    ),
                                    flex: 1,
                                  ),
                                  Expanded(
                                    child: Container(
                                        child: LabelNumberButton(
                                          title: "의뢰",
                                          number: 0,
                                          onPressed: (){ _onMissionButtonClicked(ctx); },
                                        )
                                    ),
                                    flex: 1,
                                  ),
                                  Expanded(
                                    child: Container(
                                        decoration: BoxDecoration(
                                            border: Border(
                                                left: BorderSide(
                                                    color: Colors.white,
                                                    width: 1
                                                )
                                            )
                                        ),
                                        child: LabelNumberButton(
                                          title: "메세지",
                                          number: 0,
                                          onPressed: (){ _onMessageButtonClicked(ctx); },
                                        )
                                    ),
                                    flex: 1,
                                  ),
                                ],
                              )
                          )
                      ),
                    )
                  ],
                )
            )
        ),
        tabBarView: this._currentTabBarView,
      )
    );
  }
}