import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/mypage/screens/my_message_history_page.dart';
import 'package:deal/src/screens/mypage/widgets/message_list_tile.dart';
import 'package:deal/src/blocs/messsage_history/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyMessageListView extends StatelessWidget {
  final TabController tabController;

  const MyMessageListView({Key key, this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TabBarView(
      controller: this.tabController,
      children: <Widget>[
        BlocProvider<MessageHistoryBloc>(
          builder: (ctx) => MessageHistoryBloc(
              userRepository: RepositoryProvider.of<UserRepository>(context),
          ),
          child: MyMessageHistoryPage(type: 1),
        ),
        BlocProvider<MessageHistoryBloc>(
          builder: (ctx) => MessageHistoryBloc(
              userRepository: RepositoryProvider.of<UserRepository>(context),
          ),
          child: MyMessageHistoryPage(type: 2),
        ),
        BlocProvider<MessageHistoryBloc>(
          builder: (ctx) => MessageHistoryBloc(
            userRepository: RepositoryProvider.of<UserRepository>(context),
          ),
          child: MyMessageHistoryPage(type: 0),
        ),
      ],
    );
  }
}
