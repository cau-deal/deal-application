import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/messsage_history/bloc.dart';
import 'package:deal/src/protos/Datetime.pb.dart';
import 'package:deal/src/screens/exception/no_result.dart';
import 'package:deal/src/screens/mypage/widgets/message_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyMessageHistoryPage extends StatefulWidget {

  final int type;

  const MyMessageHistoryPage({Key key, this.type}) : super(key: key);

  @override
  MyMessageHistoryPageState createState() => MyMessageHistoryPageState();
}

class MyMessageHistoryPageState extends State<MyMessageHistoryPage> {

  MessageHistoryBloc messageHistoryBloc;

  @override
  void initState() {
    MessageHistoryEvent evt = (widget.type == 1)? UnRead() : (widget.type==2)? Read() : All();
    messageHistoryBloc = BlocProvider.of<MessageHistoryBloc>(context)..add(evt);
    super.initState();
  }


  @override
  void dispose() {
    messageHistoryBloc.close();
    super.dispose();
  }

  String convertDateTimeToString(Datetime d){
    return "${d.year}.${d.month}.${d.day}";
  }

  @override
  Widget build(BuildContext ctx) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: BlocBuilder<MessageHistoryBloc, MessageHistoryState>(
          builder: (ctx, state){
            if (state is MessageHistoryUninitialized) {
              return Container(
                  color: Colors.white,
                  child: SpinKitThreeBounce(
                    color: Color(0xffF7CF00),
                    size: 20.0,
                  )
              );
            } else if (state is MessageHistoryLoaded){
              return (state.histories.length > 0)? Container(
                  color: Colors.white,
                  child: ListView.separated(
                    itemCount: state.histories.length,
                    separatorBuilder: (context, i) {
                      return Divider(height: 1, color: Color(0xffe3e3e3));
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return MessageListTile(
                        title: state.histories[index].content,
                        date: convertDateTimeToString(state.histories[index].createdAt),
                      );
                    },
                  )
              ) : NoResultScreen();
            } else {
              return Container();
            }
          },
        )
    );
  }
}
