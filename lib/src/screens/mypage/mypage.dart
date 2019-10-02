import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'widgets/mypage_tab_container.dart';

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {
    return new MyPageTabContainer(
      header: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left:15, right: 15),
        child: Container(
          color: Colors.white,
          child: Column(
              children: <Widget>[
                Container(
                  height: 70,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          padding: EdgeInsets.only(left: 30, top:5),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Align(
                                  child: Text("회원님 환영합니다.", style:TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black)),
                                  alignment: Alignment.centerLeft,
                                ),
                                Align(
                                  child:Text("deal@cau.ac.kr", style:TextStyle(fontSize: 12, color: Colors.black54)),
                                  alignment: Alignment.centerLeft,
                                )
                              ],
                            ),
                        )
                      ),
                      Container(
                        color: Colors.white,
                        width: 80,
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
                              child: Align(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("포인트", style: TextStyle(fontSize: 12)),
                                    Text("0"),
                                  ],
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                              padding: EdgeInsets.all(15)
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("의뢰", style: TextStyle(fontSize: 12)),
                                    Text("0"),
                                  ],
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
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("메세지", style: TextStyle(fontSize: 12)),
                                    Text("0"),
                                  ],
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
      children: <Widget>[
        Center(
            child: Container(
              color: Colors.white
            )
        ),
        Center(
            child: Container(
                color: Colors.amberAccent
            )
        ),
        Center(
            child: Container(
                color: Colors.white
            )
        ),
      ],
    );
  }
}