import 'package:deal/src/blocs/point_history/bloc.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/mypage/screens/my_point_history_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyPointListView extends StatelessWidget {
  final TabController tabController;

  const MyPointListView({Key key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: this.tabController,
      children: <Widget>[
        BlocProvider<PointHistoryBloc>(
          builder: (ctx) => PointHistoryBloc(
            userRepository: RepositoryProvider.of<UserRepository>(context),
            forPlusHistory: true
          ),
          child: MyPointHistoryPage(forPlusHistory: true),
        ),
        BlocProvider<PointHistoryBloc>(
          builder: (ctx) => PointHistoryBloc(
              userRepository: RepositoryProvider.of<UserRepository>(context),
              forPlusHistory: false
          ),
          child: MyPointHistoryPage(forPlusHistory: false),
        ),
      ],
    );
  }
}
