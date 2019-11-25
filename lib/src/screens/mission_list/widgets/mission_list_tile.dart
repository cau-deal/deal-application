import 'package:cached_network_image/cached_network_image.dart';
import 'package:deal/src/blocs/mission_create/bloc.dart';
import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/mission_create/mission_create.dart';
import 'package:deal/src/screens/mission_detail/mission_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MissionListTile extends StatelessWidget {
  final int idx;
  final int cost;
  final String thumbnail;
  final String title;
  final String subTitle;
  final bool isTopMission;

  const MissionListTile({Key key, this.thumbnail, this.title, this.subTitle, this.idx, this.cost = 0, this.isTopMission = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 90,
      padding: EdgeInsets.only(left: 15, right: 15),
      child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (ctx) => (this.idx != -1)
                    ? BlocProvider<MissionDetailBloc>(
                        builder: (ctx) => MissionDetailBloc(
                          missionRepository: RepositoryProvider.of<MissionRepository>(context),
                          userRepository: RepositoryProvider.of<UserRepository>(context)
                        )..add(Fetch(idx)),
                        child: MissionDetailPage(missionId: idx)
                      )
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
                  Hero(
                    tag: 'mission_list_thumbnail_${this.idx}',
                    child: (this.thumbnail.startsWith("asset://")) ? Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 64.0,
                      height: 64.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        image: DecorationImage(
                            image: AssetImage(this.thumbnail.replaceAll("asset://", "")),
                            fit: BoxFit.fill
                        ),
                      ),
                    ) : CachedNetworkImage(
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
                  (this.idx != -1)? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                          width: 32,
                          height: 32,
                          child: IconButton(
                            icon: Image.asset("res/images/app-logo-black.png"),
                            iconSize: 32,
                            padding: EdgeInsets.all(0),
                          )
                      ),
                      Text('$cost', style:TextStyle(color: Colors.black87, fontSize: 14))
                    ],
                  ): Container(width: 0)
                ],
              ))
      ),
    );
  }
}
