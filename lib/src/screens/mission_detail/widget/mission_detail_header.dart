import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/custom/widgets/badge.dart';
import 'package:deal/src/protos/MissionService.pbenum.dart';
import 'package:deal/src/screens/report/report.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class MissionDetailHeader extends StatelessWidget {

  final table = {
    MissionType.COLLECT_MISSION_TYPE : '수집',
    MissionType.PROCESS_MISSION_TYPE : '가공'
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MissionDetailBloc, MissionDetailState>(
      builder: (ctx, state){
        return Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(state.title, style: TextStyle(color: Color(0xFF333333), fontSize: 18, fontWeight: FontWeight.w700)),
                            SizedBox(
                              height: 5,
                            ),
                            Text(state.subTitle, style: TextStyle(color: Color(0xFF444444), fontSize: 14)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Row(
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
                                Text("${state.point} / ${state.unit} 건",
                                    style: TextStyle(
                                      letterSpacing: -0.5,
                                      fontSize: 15,
                                      color: Color(0xff333333),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                    height: 30,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.calendar_today,
                              size: 16,
                              color: Color(0xFF5f75ac),
                            ),
                            SizedBox(width: 5),
                            Text("~${DateFormat("yyyy-MM-dd").format(state.endDate)}",
                                style: TextStyle(
                                  letterSpacing: -0.8,
                                  color: Color(0xFF5f75ac),
                                )),
                            SizedBox(width: 5),
                            Badge(
                              text: "${ (state.endDate.difference(DateTime.now())).inDays }일",
                            ),
                            SizedBox(width: 5),
                            Badge(
                              text: "${table[state.missionType]}",
                            )
                          ],
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (ctx) => ReportPage(), fullscreenDialog: true));
                            },
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: IconButton(
                                      icon: Image.asset("res/images/emoji-tired.png"),
                                      iconSize: 16,
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {},
                                    )),
                                Text("신고하기",
                                    style: TextStyle(
                                      letterSpacing: -0.5,
                                      fontSize: 12,
                                      color: Color(0xff333333),
                                    ))
                              ],
                            )),
                      ],
                    ))
              ],
            ));
      },
    );
  }
}
