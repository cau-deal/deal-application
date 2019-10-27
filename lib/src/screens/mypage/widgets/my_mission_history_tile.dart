import 'package:deal/src/blocs/mission_create/bloc.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/mission_create/mission_create.dart';
import 'package:deal/src/screens/mission_detail/mission_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyMissionHistoryTile extends StatelessWidget {
  final int idx;
  final int cost;
  final String thumbnail;
  final String title;
  final String subTitle;
  final bool isTopMission;

  const MyMissionHistoryTile({Key key, this.thumbnail, this.title, this.subTitle, this.idx, this.cost = 0, this.isTopMission = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 96,
      padding: EdgeInsets.only(left: 15, right: 15),
      child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (ctx) => (!this.isTopMission)
                    ? MissionDetailPage(idx: idx)
                    : BlocProvider<MissionCreateBloc>(
                    builder: (BuildContext ctx) => MissionCreateBloc(
                        missionRepository: RepositoryProvider.of<MissionRepository>(context),
                        userRepository: RepositoryProvider.of<UserRepository>(context)
                    ),
                    child: MissionCreatePage(idx: idx)
                )
            ));
          },
          child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: <Widget>[
                  Container(
                      color: Colors.white,
                      child: Container(
                        width: 64,
                        height: 64,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: Image.network(this.thumbnail),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                      )
                  ),
                  Expanded(
                      child: Container(
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: double.infinity,
                                child: Text(this.title,
                                    style: TextStyle(
                                        fontFamily: "NanumSquare",
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontSize: 16,
                                        decoration: TextDecoration.none)),
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 5,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text(this.subTitle,
                                    style: TextStyle(fontFamily: "NanumSquare", color: Colors.black54, fontSize: 13, decoration: TextDecoration.none)),
                              ),
                            ],
                          )
                      )
                  ),
                ],
              ))),
    );
  }
}
