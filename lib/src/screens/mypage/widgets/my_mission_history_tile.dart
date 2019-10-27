import 'package:cached_network_image/cached_network_image.dart';
import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/mission_detail/mission_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyMissionHistoryTile extends StatelessWidget {
  final int idx;
  final String thumbnail;
  final String title;
  final String subTitle;

  final String label;

  const MyMissionHistoryTile({
    Key key,
    this.thumbnail,
    this.title,
    this.subTitle,
    this.idx,
    this.label
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 90,
      padding: EdgeInsets.only(left: 15, right: 15),
      child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (ctx) => BlocProvider<MissionDetailBloc>(
                    builder: (ctx) => MissionDetailBloc(
                        missionRepository: RepositoryProvider.of<MissionRepository>(context),
                        userRepository: RepositoryProvider.of<UserRepository>(context)
                    )..add(Fetch(idx)),
                    child: MissionDetailPage(missionId: idx)
                )
            ));
          },
          child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: <Widget>[
                  Hero(
                      tag: 'mission_list_thumbnail_${this.idx}',
                      child: CachedNetworkImage(
                          imageUrl: this.thumbnail,
                          imageBuilder: (context, imageProvider) => Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 64.0,
                            height: 64.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          placeholder: (context, url) => CircularProgressIndicator(),
                          errorWidget: (context, url, error) => Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 64.0,
                            height: 64.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              image: DecorationImage(
                                  image: AssetImage("res/images/default_thumbnail.png"),
                                  fit: BoxFit.cover
                              ),
                            ),
                          )
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
              ))
      ),
    );
  }
}
