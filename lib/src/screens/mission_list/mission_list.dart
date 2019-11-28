import 'package:deal/src/blocs/fetch_mission_list/bloc.dart';
import 'package:deal/src/custom/widgets/double_back_to_close_app.dart';
import 'package:deal/src/protos/MissionService.pbenum.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/mission_list/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screen/mission_listview.dart';
import 'widgets/mission_list_tab_container.dart';

class MissionListPage extends StatefulWidget {
  @override
  State createState() => MissionListPageState();
}

class MissionListPageState extends State<MissionListPage> with AutomaticKeepAliveClientMixin<MissionListPage>{

  @override
  Widget build(BuildContext ctx) {
    super.build(context);
    return Scaffold(
        body: DoubleBackToCloseApp(
            child: MissionListTabContainer(
                children: <Widget>[
                  BlocProvider<FetchMissionBloc>(
                    builder: (ctx) => FetchMissionBloc(
                        userRepository: RepositoryProvider.of<UserRepository>(ctx),
                        missionRepository: RepositoryProvider.of<MissionRepository>(ctx),
                        missionType: MissionType.ALL_MISSION_TYPE
                    ),
                    child: MainScreen(),
                  ),

                  BlocProvider<FetchMissionBloc>(
                    builder: (ctx) => FetchMissionBloc(
                        userRepository: RepositoryProvider.of<UserRepository>(ctx),
                        missionRepository: RepositoryProvider.of<MissionRepository>(ctx),
                        missionType: MissionType.COLLECT_MISSION_TYPE
                    ),
                    child: MissionListView(),
                  ),

                  BlocProvider<FetchMissionBloc>(
                    builder: (ctx) => FetchMissionBloc(
                        userRepository: RepositoryProvider.of<UserRepository>(ctx),
                        missionRepository: RepositoryProvider.of<MissionRepository>(ctx),
                        missionType: MissionType.PROCESS_MISSION_TYPE
                    ),
                    child: MissionListView(),
                  ),
                ],
              ),
        )
    );
  }

  @override
  bool get wantKeepAlive => true;
}
