import 'package:deal/src/blocs/auth/auth_bloc.dart';
import 'package:deal/src/blocs/auth/auth_state.dart';
import 'package:deal/src/screens/point_credit/point_credit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PointExtraHeader extends StatefulWidget {
  @override
  State createState() => PointExtraHeaderState();
}

class PointExtraHeaderState extends State<PointExtraHeader> {

  @override
  Widget build(BuildContext ctx) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (ctx, state){
        return Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child: RaisedButton(
                    color: (state is Authenticated && state.isPhoneAuth)? Color(0xffF7CF00) : Color(0xffe0e0e0),
                    elevation: 0,
                    highlightElevation: 0,
                    onPressed: (){
                      if(state is Authenticated && state.isPhoneAuth){
                        Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                          return PointCreditPage();
                        }));
                      } else {
                        Fluttertoast.showToast(msg: "본인인증이 필요합니다.");
                      }
                    },
                    disabledColor: Color(0xffe0e0e0),
                    disabledElevation: 0,
                    disabledTextColor: Colors.black,
                    highlightColor: Colors.amberAccent,
                    splashColor: Colors.amberAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            child: SizedBox(
                                width: 28, height: 28,
                                child: IconButton(padding: EdgeInsets.zero, icon: Image.asset("res/images/app-logo-black.png"), onPressed: null)
                            )
                        ),
                        Text('포인트 충전',
                            style: TextStyle(color: Colors.black87, fontSize: 13, fontWeight: FontWeight.w500, fontFamily: "NanumSquare"),
                        )
                      ],
                    )
                )),
                SizedBox(width: 10),
                Expanded(child: RaisedButton(
                    color: (state is Authenticated && state.isAccountAuth)? Color(0xffF7CF00) : Color(0xffe0e0e0),
                    elevation: 0,
                    highlightElevation: 0,
                    onPressed: (){
                      if(state is Authenticated && state.isAccountAuth){

                      } else {
                        Fluttertoast.showToast(msg: "계좌 인증이 필요합니다.");
                      }
                    },
                    disabledColor: Color(0xffe0e0e0),
                    disabledElevation: 0,
                    disabledTextColor: Colors.black,
                    highlightColor: Colors.amberAccent,
                    splashColor: Colors.amberAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            child: SizedBox(
                                width: 28, height: 28,
                                child: IconButton(padding: EdgeInsets.zero, icon: Image.asset("res/images/app-logo-black.png"), onPressed: null)
                            )
                        ),
                        Text('포인트 출금', style: TextStyle(color: Colors.black87, fontSize: 13, fontWeight: FontWeight.w500, fontFamily: "NanumSquare"))
                      ],
                    )
                )),
              ],
            )
        );
      },
    );
  }

}
