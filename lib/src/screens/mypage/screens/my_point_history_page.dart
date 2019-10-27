import 'package:deal/src/blocs/point_history/bloc.dart';
import 'package:deal/src/blocs/verified/bloc.dart';
import 'package:deal/src/screens/mypage/screens/unverified_phone.dart';
import 'package:deal/src/screens/mypage/widgets/point_history_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyPointHistoryPage extends StatefulWidget {

  final bool forPlusHistory;

  const MyPointHistoryPage({Key key, this.forPlusHistory}) : super(key: key);

  @override
  MyPointHistoryPageState createState() => MyPointHistoryPageState();
}

class MyPointHistoryPageState extends State<MyPointHistoryPage> {

  PointHistoryBloc pointHistoryBloc;

  @override
  void initState() {
    pointHistoryBloc = BlocProvider.of<PointHistoryBloc>(context)..add(Fetch());
    super.initState();
  }


  @override
  void dispose() {
    pointHistoryBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext ctx) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: BlocBuilder<VerificationBloc, VerificationState>(builder: (ctx, vs) {
          if (vs is Verified && vs.phoneVerified) {

            return BlocBuilder<PointHistoryBloc, PointHistoryState>(
              builder: (ctx, state){

                if (state is PointHistoryUninitialized) {
                  return Container(
                    color: Colors.white,
                    child: SpinKitThreeBounce(
                        color: Color(0xffF7CF00),
                        size: 20.0,
                    )
                  );
                } else if (state is PointHistoryLoaded){
                  return (state.histories.length > 0)? Container(
                      color: Colors.white,
                      child: ListView.separated(
                        itemCount: state.histories.length,
                        separatorBuilder: (context, i) {
                          return Divider(height: 1, color: Color(0xffe3e3e3));
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return PointHistoryTile(
                            pointHistory: state.histories[index],
                            forPlusHistory: widget.forPlusHistory,
                          );
                        },
                      )
                  ) : Container(
                    color: Colors.white,
                    child: Center(
                        child: SizedBox(
                          width: double.infinity,
                          height: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("res/images/logo-grey.png", height: 150),
                              SizedBox(height: 20),
                              Text(
                                "기록이 없습니다.",
                                style: TextStyle(color: Color(0xff909090), fontFamily: "NanumSquare", fontSize: 16, letterSpacing: -0.5, height: 1.5),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        )
                    )
                  );
                } else {
                  return Container();
                }
              },
            );

          } else {
            return UnverifiedPage();
          }
        })
    );
  }
}
