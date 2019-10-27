import 'package:deal/src/blocs/register_mission_history/bloc.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/mypage/screens/total_mission.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_register_mission.dart';

class MyMissionListView extends StatelessWidget {
  final TabController tabController;

  const MyMissionListView({Key key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: tabController,
      children: <Widget>[
        MyTotalMissionPage(),
        BlocProvider<RegisterMissionHistoryBloc>(
          builder: (ctx) => RegisterMissionHistoryBloc(
            userRepository: RepositoryProvider.of<UserRepository>(context),
            missionRepository: RepositoryProvider.of<MissionRepository>(context)
          ),
          child: MyRegisterMissionPage(),
        ),
      ],
    );
  }
}
