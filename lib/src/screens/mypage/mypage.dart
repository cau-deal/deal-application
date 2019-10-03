import 'package:deal/src/screens/auth_with_self_phone/auth_with_self_phone.dart';
import 'package:deal/src/screens/mypage/widgets/number_button.dart';
import 'package:deal/src/screens/preferences/preferences.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';

import 'widgets/mypage_tab_container.dart';

class MyPage extends StatelessWidget {

  void _onSettingButtonClick(BuildContext ctx){
    Navigator.push(
        ctx,
        MaterialPageRoute( builder: (ctx) => PreferencesPage() )
    );
  }


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
                                    Text("deal@cau.ac.kr", style:TextStyle(fontSize: 12, color: Colors.black54)),
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
                              child: Image.network('https://picsum.photos/536/354',
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
                                onPressed: (){ },
                              ),
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Container(
                                child: LabelNumberButton(
                                  title: "의뢰",
                                  number: 0,
                                  onPressed: (){ },
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
                                  onPressed: (){ },
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
              color: Colors.white,
              width: double.infinity,
              height: double.infinity,
              child: RaisedButton(
                child: Container(child: Text("본인인증")),
                onPressed: (){
                  Navigator.push(
                      ctx,
                      MaterialPageRoute(
                          builder: (ctx) => AuthWithSelfPhonePage(),
                          fullscreenDialog: true
                      )
                  );
                }
              )
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