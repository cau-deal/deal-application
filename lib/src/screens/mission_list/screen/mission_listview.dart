import 'package:deal/src/blocs/fetch_mission_list/bloc.dart';
import 'package:deal/src/blocs/verified/bloc.dart';
import 'package:deal/src/screens/exception/no_result.dart';
import 'package:deal/src/screens/mission_list/widgets/mission_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MissionListView extends StatefulWidget {
  @override
  MissionListViewState createState() => MissionListViewState();
}

class MissionListViewState extends State<MissionListView> {

  FetchMissionBloc _fetchMissionBloc;
  VerificationBloc _verificationBloc;

  RefreshController _refreshController = RefreshController(initialRefresh: false);

  void _onRefresh() async {
    _fetchMissionBloc.add(Clear());
    _fetchMissionBloc.add(
        AttachStaticMission(
          title: "의뢰 등록하기",
          summary: "데이터가 필요하세요? 의뢰를 등록해보세요!",
          thumbnailUri: "asset://res/images/deal-thumbnail.png",
        )
    );
    _fetchMissionBloc.add(Fetch());
    _refreshController.refreshCompleted();
  }

  @override
  void initState() {
    super.initState();
    _fetchMissionBloc = BlocProvider.of<FetchMissionBloc>(context);
    _verificationBloc = BlocProvider.of<VerificationBloc>(context);

    _fetchMissionBloc.add(
        AttachStaticMission(
            title: "의뢰 등록하기",
            summary: "데이터가 필요하세요? 의뢰를 등록해보세요!",
            thumbnailUri: "asset://res/images/deal-thumbnail.png",
        )
    );

    _fetchMissionBloc.add(Fetch());
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchMissionBloc, FetchMissionState>(
      builder: (ctx, state){
        if(state is FetchMissionUninitialized){
          return Container(
              color: Colors.white,
              child: SpinKitThreeBounce(
                color: Color(0xffF7CF00),
                size: 20.0,
              )
          );
        } else if (state is FetchMissionLoaded){
          return (state.fetchedList.length > 0)
              ? Container(
                  color: Colors.white,
                  child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: SmartRefresher(
                          enablePullUp: false,
                          enablePullDown: true,
                          controller: _refreshController,
                          header: WaterDropHeader(),
                          onRefresh: _onRefresh,
                          child: BlocBuilder<VerificationBloc, VerificationState>(
                            builder: (ctx, vs){
                              return ListView.builder(
                                itemCount: state.fetchedList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final data = state.fetchedList[index];

                                  if( data.missionId == -1 && vs is! Verified || (vs is Verified && !vs.phoneVerified) ){
                                    return Container(height: 0);
                                  } else {
                                    return MissionListTile(
                                      idx: data.missionId,
                                      thumbnail: data.thumbnailUrl,
                                      title: data.title,
                                      subTitle: data.summary,
                                      cost: data.priceOfPackage,
                                    );
                                  }

                                },
                              );
                            },
                          )
                      )
                  )
                )
              : NoResultScreen();
        } else {
          return NoResultScreen();
        }
      },
    );

  }
}
