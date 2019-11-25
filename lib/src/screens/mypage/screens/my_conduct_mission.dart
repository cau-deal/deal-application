import 'package:deal/src/blocs/auth/auth_bloc.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/conduct_mission_history/bloc.dart';
import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/screens/exception/no_result.dart';
import 'package:deal/src/screens/mypage/screens/unverified_phone.dart';
import 'package:deal/src/screens/mypage/widgets/my_mission_history_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyConductMissionPage extends StatefulWidget {
  @override
  MyConductMissionPageState createState() {
    return MyConductMissionPageState();
  }
}

class MyConductMissionPageState extends State<MyConductMissionPage> {

  ConductMissionHistoryBloc _conductMissionHistoryBloc;

  @override
  void initState() {
    super.initState();
    this._conductMissionHistoryBloc = BlocProvider.of<ConductMissionHistoryBloc>(context)..add(Fetch());
  }

  @override
  void dispose() {
    _conductMissionHistoryBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (ctx, vs) {
          if (vs is Authenticated && vs.isPhoneAuth) {
            return MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: BlocBuilder<ConductMissionHistoryBloc, ConductMissionHistoryState>(
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
                      return ( state.histories.length > 0 )? Container(
                          color: Colors.white,
                          child: ListView.builder(
                            itemCount: state.histories.length,
                            itemBuilder: (BuildContext context, int index) {
                              final ConductMissionProto data = state.histories[index];
                              return MyMissionHistoryTile(
                                idx: data.missionId,
                                thumbnail: data.thumbnailUrl,
                                title: data.title,
                                subTitle: data.summary,
                                missionState: data.conductMissionState,
                                label: data.conductMissionState.toString()
                              );
                            },
                          )
                      ) : NoResultScreen();
                    } else {
                      return Container(
                        color: Colors.white,
                      );
                    }
                  },
                )
            );
          } else {
            return UnverifiedPage();
          }
        }
    );
  }
}
