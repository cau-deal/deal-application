import 'package:deal/src/blocs/conduct_mission_history/bloc.dart';
import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/blocs/register_mission_history/bloc.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_conduct_mission.dart';
import 'my_register_mission.dart';

class MyMissionListView extends StatelessWidget {
  final TabController tabController;

  const MyMissionListView({Key key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MissionDetailBloc>(
      builder: (ctx) => MissionDetailBloc(
        missionRepository: RepositoryProvider.of<MissionRepository>(context),
        userRepository: RepositoryProvider.of<UserRepository>(context)
      ),

      child: TabBarView(
        controller: tabController,
        children: <Widget>[
          BlocProvider<ConductMissionHistoryBloc>(
            builder: (ctx) => ConductMissionHistoryBloc(
                userRepository: RepositoryProvider.of<UserRepository>(context),
                missionRepository: RepositoryProvider.of<MissionRepository>(context)
            ),
            child: MyConductMissionPage(),
          ),
          BlocProvider<RegisterMissionHistoryBloc>(
            builder: (ctx) => RegisterMissionHistoryBloc(
                userRepository: RepositoryProvider.of<UserRepository>(context),
                missionRepository: RepositoryProvider.of<MissionRepository>(context)
            ),
            child: MyRegisterMissionPage(),
          ),
        ],
      ),
    );
  }
}
