import 'package:deal/src/blocs/register_mission_history/bloc.dart';
import 'package:deal/src/blocs/verified/bloc.dart';
import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/screens/mypage/screens/unverified_phone.dart';
import 'package:deal/src/screens/mypage/widgets/my_mission_history_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyRegisterMissionPage extends StatefulWidget {
  @override
  MyRegisterMissionPageState createState() {
    return MyRegisterMissionPageState();
  }
}

class MyRegisterMissionPageState extends State<MyRegisterMissionPage> {

  RegisterMissionHistoryBloc _registerMissionHistoryBloc;

  @override
  void initState() {
    super.initState();
    this._registerMissionHistoryBloc = BlocProvider.of<RegisterMissionHistoryBloc>(context)..add(Fetch());
  }


  @override
  void dispose() {
    _registerMissionHistoryBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocBuilder<VerificationBloc, VerificationState>(builder: (ctx, vs) {
      if (vs is Verified && vs.phoneVerified) {
        return BlocBuilder<RegisterMissionHistoryBloc, RegisterMissionHistoryState>(
          builder: (ctx, state){

            if (state is HistoryUninitialized) {
              return Container(
                  color: Colors.white,
                  child: SpinKitThreeBounce(
                    color: Color(0xffF7CF00),
                    size: 20.0,
                  )
              );
            } else if( state is HistoryLoaded ){
              return Container(
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: state.histories.length,
                    itemBuilder: (BuildContext context, int index) {
                      final MissionProto data = state.histories[index];
                      return MyMissionHistoryTile(
                        idx: data.missionId,
                        thumbnail: data.thumbnailUrl,
                        title: data.title,
                        subTitle: data.summary,
                      );
                    },
                  )
              );
            } else {
              return Container(
                color: Colors.white,
              );
            }
          },
        );
      } else {
        return UnverifiedPage();
      }
    });
  }
}
