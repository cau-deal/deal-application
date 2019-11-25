import 'package:cached_network_image/cached_network_image.dart';
import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/custom/widgets/badge.dart';
import 'package:deal/src/protos/MissionService.pbenum.dart';
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

  final MissionType missionType;
  final missionState;

  const MyMissionHistoryTile({
    Key key,
    this.thumbnail,
    this.title,
    this.subTitle,
    this.idx,
    this.label,
    this.missionType,
    this.missionState,
  }) : super(key: key);

  String mapMissionStateToString(state){
      /*
        * MissionState 전이에 대한 설명

        (* State *), [ Event ]
        1. DURING_MISSION (진행 중, 작업자에게 할당 가능)
        2. SOLD_OUT (매진, 미션이 완료되지는 않았지만 작업자에게 할당 불가능(모두 할당되어 진행중인 상태))
        3. WATING_CONFIRM_PURCHASE (구매 확정 대기)
        4. COMPLETE_MISSION (완료)
        5. WAITING_REGISTER (등록 대기)

        # 미션 State 전이
        ==[가공 미션 등록]==> (* 1. 진행 중 *)
        ==[모두 할당됨]==> (* 2. 매진 *) <==[반려 발생]==
        ==[가공 완료]==> (* 3. 구매확정 대기 *)
        ==[구매 최종 결정]==> (* 4. 완료 *)
      */
      /*
        * ConductState 전이에 대한 설명

        (* State *), [ Event ]
        1. DURING_MISSION (진행 중)
        2. WAITING_VERIFICATION(검수 대기중)
        3. DURING_VERIFICATION(검수 진행중)
        4. COMPLETE_MISSION (완료)
        5. RETURN_VERIFICATION (반려)
        6. FAIL_MISSION (미션 실패, ex> 시간 초과)
        7. INIT( 아직 한 번도 해당 미션을 받은 적이 없는 상태)
      */

      switch(state){
        case MissionState.DURING_MISSION:
          return "할당중";
        case MissionState.SOLD_OUT:
          return "할당완료";
        case MissionState.WATING_CONFIRM_PURCHASE:
          return "구매확정";
        case MissionState.COMPLETE_MISSION:
          return "완료";
        case MissionState.WAITING_REGISTER:
          return "등록대기";
        case MissionState.UNKNOWN_MISSION_STATE:
          return "에러";
      }

      switch(state) {
        case ConductMissionState.INIT_CONDUCT_MISSION_STATE:
          return "참여하기";
        case ConductMissionState.DURING_MISSION_CONDUCT_MISSION_STATE:
          return "진행중";
        case ConductMissionState.WAITING_VERIFICATION_CONDUCT_MISSION_STATE:
          return "검수대기";
        case ConductMissionState.DURING_VERIFICATION_CONDUCT_MISSION_STATE:
          return "검수진행";
        case ConductMissionState.COMPLETE_VERIFICATION_CONDUCT_MISSION_STATE:
          return "완료";
        case ConductMissionState.RETURN_VERIFICATION_CONDUCT_MISSION_STATE:
          return "반려";
        case ConductMissionState.UNKNOWN_CONDUCT_MISSION_STATE:
          return "에러";
      }
  }

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
                  Badge(text: mapMissionStateToString(this.missionState))
                ],
              ))
      ),
    );
  }
}
