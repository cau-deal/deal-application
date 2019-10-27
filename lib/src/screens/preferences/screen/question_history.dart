import 'package:deal/src/blocs/inquiry_history/bloc.dart';
import 'package:deal/src/screens/exception/no_result.dart';
import 'package:deal/src/screens/preferences/widgets/question_history_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class QuestionHistoryScreen extends StatefulWidget {
  @override
  _QuestionHistoryState createState() => _QuestionHistoryState();
}

class _QuestionHistoryState extends State<QuestionHistoryScreen> {
  InquiryHistoryBloc inquiryHistoryBloc;

  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  @override
  void initState() {
    super.initState();
    this.inquiryHistoryBloc = BlocProvider.of<InquiryHistoryBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    /*final List<ExpansionTile> _listOfExpansions = List<ExpansionTile>.generate(
        _listViewData.length,
            (i) => ExpansionTile(
          title: Text("Expansion $i"),
          children: _listViewData
              .map((data) => ListTile(
            leading: Icon(Icons.person),
            title: Text('data'),
            subtitle: Text("a subtitle here"),
          ))
              .toList(),
        ));*/

    return Scaffold(
        backgroundColor: Colors.white,
        body: Theme(
          data: ThemeData(
              textTheme: TextTheme(subhead: TextStyle(color: Colors.black, fontFamily: "NanumSquare")), dividerColor: Colors.white, accentColor: Colors.black),
          child: BlocListener<InquiryHistoryBloc, InquiryHistoryState>(listener: (ctx, state) {
            if (state is InquiryLoaded) {}
          }, child: BlocBuilder<InquiryHistoryBloc, InquiryHistoryState>(builder: (ctx, state) {
            if (state is InquiryUninitialized) {
              return Center(
                  child: SpinKitThreeBounce(
                    color: Color(0xffF7CF00),
                    size: 20.0,
                  )
              );
            } else if (state is InquiryLoaded) {
              return Container(
                padding: EdgeInsets.only(top: 3),
                child: SmartRefresher(
                    enablePullUp: false,
                    enablePullDown: true,
                    controller: _refreshController,
                    header: WaterDropHeader(),
                    onRefresh: _onRefresh,
                    child: ListView.builder(
                      itemCount: state.inquiries.length,
                      itemBuilder: (BuildContext context, int index) {
                        return QuestionHistoryTile(state.inquiries[index]);
                      },
                    )
                )
              );
            } else {
              Fluttertoast.showToast(msg: "FETCH 에러발생!");
              return NoResultScreen();
            }
          })),
        ));
  }
}
