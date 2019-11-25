import 'package:deal/src/blocs/auth/auth_bloc.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/point_history/bloc.dart';
import 'package:deal/src/screens/exception/no_result.dart';
import 'package:deal/src/screens/mypage/screens/unverified_account.dart';
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
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(builder: (ctx, vs) {
          if (vs is Authenticated && vs.isAccountAuth) {

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
                  ) : NoResultScreen();
                } else {
                  return Container();
                }
              },
            );

          } else if (vs is Authenticated && vs.isPhoneAuth) {
            return UnverifiedAccountPage();

          } else {
            return UnverifiedPage();
          }
        })
    );
  }
}
