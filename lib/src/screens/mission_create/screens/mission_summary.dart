import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/mission_create/bloc.dart';
import 'package:deal/src/custom/dialogs/simple_list_dialog.dart';
import 'package:deal/src/custom/widgets/badge.dart';
import 'package:deal/src/protos/Data.pbenum.dart';
import 'package:deal/src/protos/MissionService.pbenum.dart';
import 'package:deal/src/screens/mission_create/widget/mission_create_textform_field.dart';
import 'package:deal/src/screens/mission_data_upload/mission_upload_collect_sound.dart';
import 'package:deal/src/screens/mission_data_upload/mission_upload_collect_survey.dart';
import 'package:deal/src/screens/mission_data_upload/mission_upload_process_image.dart';
import 'package:deal/src/screens/mission_detail/modules/custom_image_delegate.dart';
import 'package:deal/src/screens/mission_detail/widget/content_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zefyr/zefyr.dart';

import 'mission_create_editor.dart';

class MissionSummaryPage extends StatefulWidget {
  @override
  MissionSummaryPageState createState() => MissionSummaryPageState();
}

class MissionSummaryPageState extends State<MissionSummaryPage> with AutomaticKeepAliveClientMixin<MissionSummaryPage> {

  MissionCreateBloc _missionCreateBloc;

  TextEditingController totalNumController;

  NotusDocument doc;
  String koreanUnit;

  @override
  void initState() {
    super.initState();

    _missionCreateBloc = BlocProvider.of<MissionCreateBloc>(context);

    totalNumController = TextEditingController();

    koreanUnit = "영";
    totalNumController.addListener(() {
      setState(() { koreanUnit = numKorean(totalNumController.text); });
      _missionCreateBloc.add(
          TotalCountChanged(totalCnt: totalNumController.text.isNotEmpty? int.parse(totalNumController.text) : 0)
      );
    });
  }

  @override
  void dispose() {
    totalNumController.dispose();
    super.dispose();
  }

  String _convertMissionTypeToString(MissionType missionType){
    final table = {
      MissionType.PROCESS_MISSION_TYPE : '가공',
      MissionType.COLLECT_MISSION_TYPE : '수집'
    };
    return table[missionType];
  }

  String _convertDataTypeToString(DataType dataType){
    final table = {
      DataType.IMAGE : '사진',
      DataType.SURVEY : '설문',
      DataType.SOUND : '음성',
    };
    return table[dataType];
  }

  List<Map<String, DataType>> getOptionList(MissionType missionType){
    if(missionType == MissionType.COLLECT_MISSION_TYPE){
      return [{"설문수집":DataType.SURVEY}, {"사진수집":DataType.IMAGE}, {"음성수집":DataType.SOUND}];
    }

    if(missionType == MissionType.PROCESS_MISSION_TYPE){
      return [{"사진가공":DataType.IMAGE}];
    }

    return [];
  }

  String numKorean(String s) {
    var hanA = ["", "일", "이", "삼", "사", "오", "육", "칠", "팔", "구", "십"];
    var danA = ["", "십", "백", "천", "", "십", "백", "천", "", "십", "백", "천", "", "십", "백", "천"];
    var result = "";
    for (int i = 0; i < s.length; i++) {
      String str = "";
      String han = hanA[int.parse(s[s.length - (i + 1)])];
      if (han != "") str += han + danA[i];
      if (i == 4) str += "만";
      if (i == 8) str += "억";
      if (i == 12) str += "조";
      result = str + result;
    }

    if (s.length == 0) {
      result = "영";
    }

    return result;
  }

  void uploadDataHandler(MissionCreateState state, DataType dataType) async {
    bool isDataUploaded = false;
    switch(state.missionType){
      case MissionType.COLLECT_MISSION_TYPE: {
        switch(dataType){
          case DataType.SURVEY:
            isDataUploaded = await Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) => UploadCollectSurvey(), fullscreenDialog: true)
            );
            break;
          case DataType.SOUND:
            isDataUploaded = await Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) => UploadCollectSound(), fullscreenDialog: true)
            );
            break;
          case DataType.IMAGE:
            isDataUploaded = true;
            break;
        }
        break;
      }
      case MissionType.PROCESS_MISSION_TYPE: {
        switch(dataType){
          case DataType.IMAGE: {
            var result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (ctx) => UploadProcessImage(
                  images: state.images, labels: state.labels
                ), fullscreenDialog: true)
            );
            print(result);
            isDataUploaded = result['images'].length > 0 && result['labels'].length > 0;
            _missionCreateBloc.add(MissionDataChanged(images: result['images'], labels: result['labels']));
            print(_missionCreateBloc.toString());
            break;
          }
        }
        break;
      }
    }
    _missionCreateBloc.add(MissionDataUploadedChanged(isDataUploaded: isDataUploaded));
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (ctx, state){
          return (state is Authenticated && state.isPhoneAuth)
              ? Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                  alignment: Alignment.centerLeft,
                  child: BlocBuilder<MissionCreateBloc, MissionCreateState>(
                    builder: (ctx, mcs){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ContentHeader(label: "의뢰자"),
                          Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      height: 50,
                                      width: 50,
                                      margin: EdgeInsets.only(right: 10),
                                      child: CircleAvatar(
                                        radius: 40.0,
                                        backgroundColor: Colors.amberAccent,
                                        child: ClipOval(child: Image.network('https://picsum.photos/100/100', width: 60, height: 60, fit: BoxFit.cover)),
                                      )),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("${state.profile.name}", style: TextStyle(color: Color(0xFF333333), fontSize: 14, fontWeight: FontWeight.w700)),
                                      SizedBox(height: 5),
                                      Badge(
                                        text: "Lv. ${state.profile.level}",
                                        color: Color(0xffF7CF00),
                                      )
                                    ],
                                  )
                                ],
                              )),
                          SizedBox(height: 25),
                          ContentHeader(label: "목표"),
                          Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(children: <Widget>[
                                    Container(
                                        child: MissionCreateTextFormField(
                                          placeholder: "목표",
                                          textSize: 19,
                                          textAlign: TextAlign.right,
                                          textInputType: TextInputType.number,
                                          controller: totalNumController,
                                        ),
                                        width: 90),
                                    Text(" 건", style: TextStyle(color: Color(0xFF333333), fontSize: 18, fontWeight: FontWeight.w700)),
                                    Text(" ($koreanUnit 건)", style: TextStyle(color: Color(0xFF999999), fontSize: 14, fontWeight: FontWeight.w500))
                                  ]),
                                  SizedBox(height: 15),
                                  Container(
                                    color: Color(0xffeeeeee),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          child: Icon(
                                            Icons.help,
                                            color: Colors.black45,
                                          ),
                                          padding: EdgeInsets.all(5),
                                        ),
                                        Expanded(
                                            child: Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text(
                                                    "의뢰는 입력하신 의뢰 단위로 수행자에게 할당이 됩니다. (의뢰 단위 : ${mcs.unit})\n"
                                                        "목표건수는 입력하신 의뢰 단위의 배수로 설정이 돼야합니다.\n"
                                                        "의뢰 등록시 '목표건수 * (포인트/단위) + 수수료' 포인트가 사용됩니다. (소모 예상 포인트 : "
                                                        "${ (mcs.totalCount * (mcs.point / mcs.unit)).floor() })",
                                                    style: TextStyle(color: Colors.black, height: 1.5, fontSize: 14)
                                                )
                                            )
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          SizedBox(height: 25),
                          ContentHeader(label: "의뢰 종류"),
                          Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Row(children: <Widget>[
                                    GestureDetector(
                                        onTap: () async {
                                          MissionType _result = await showDialog<MissionType>(
                                              context: context,
                                              builder: (ctx) => SimpleListDialog<MissionType>(
                                                title: '종류',
                                                options: [{'수집': MissionType.COLLECT_MISSION_TYPE}, {'가공': MissionType.PROCESS_MISSION_TYPE}],
                                              ));
                                          if(_result != null) {
                                            _missionCreateBloc.add(MissionTypeChanged(missionType: _result));
                                          }
                                        },
                                        child: Badge(
                                          color: (mcs.missionType != MissionType.UNKNOWN_MISSION_TYPE)? Color(0xFF5f75ac) : Colors.black45,
                                          text: (mcs.missionType == MissionType.UNKNOWN_MISSION_TYPE)? "의뢰 종류" : "${_convertMissionTypeToString(mcs.missionType)} 의뢰",
                                          fontSize: 14,
                                        )
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    // TextStyle(color: Color(0xff999999))
                                    GestureDetector(
                                        onTap: () async {
                                          DataType _result = await showDialog<DataType>(
                                              context: context,
                                              builder: (ctx) => SimpleListDialog<DataType>(
                                                title: '데이터 종류',
                                                options: getOptionList(mcs.missionType),
                                              ));
                                          if(_result != null) {
                                            _missionCreateBloc.add(DataTypeChanged(dataType: _result));
                                            this.uploadDataHandler(mcs, _result);
                                          }
                                        },
                                        child: Badge(
                                          color: (mcs.dataType != DataType.UNKNOWN_DATA_TYPE)? Color(0xFF5f75ac) : Colors.black45,
                                          text: (mcs.dataType == DataType.UNKNOWN_DATA_TYPE)? "데이터 종류" : "${_convertDataTypeToString(mcs.dataType)}",
                                          fontSize: 14,
                                        )
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),

                                    GestureDetector(
                                        onTap: () async {
                                          if(mcs.dataType == DataType.UNKNOWN_DATA_TYPE){
                                            // do NOTHING
                                          } else {
                                            uploadDataHandler(mcs, mcs.dataType);
                                          }
                                        },
                                        child: Badge(
                                          color: (mcs.isDataUploaded)? Color(0xFF5f75ac) : Colors.black45,
                                          text: (mcs.isDataUploaded)? "데이터 등록 완료": "의뢰 데이터 등록",
                                          fontSize: 14,
                                        )
                                    )
                                  ]),
                                  SizedBox(height: 15),
                                ],
                              )),
                          SizedBox(height: 25),
                          ContentHeader(label: "의뢰 설명"),
                          Container(
                              padding: EdgeInsets.all(10),
                              child: GestureDetector(
                                  onTap: () async {
                                    var _doc = await Navigator.push(context, MaterialPageRoute(builder: (ctx) => MissionCreateEditor(doc: doc), fullscreenDialog: true));
                                    setState(() { if (_doc != null) doc = _doc; });
                                    _missionCreateBloc.add(MissionSummaryChanged(_doc.toString()));
                                  },
                                  child: ZefyrTheme(
                                      data: ZefyrThemeData(
                                        paragraphTheme:
                                        StyleTheme(textStyle: TextStyle(fontSize: 16.0, height: 1.25, fontWeight: FontWeight.normal, color: Colors.grey.shade800)),
                                      ),
                                      child: (doc != null)
                                          ? ZefyrView(
                                        document: doc,
                                        imageDelegate: CustomImageDelegate(),
                                      )
                                          : Container(
                                          height: 150,
                                          width: double.infinity,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(color: Color(0xffeeeeee)),
                                          child: Text(
                                            "의뢰 설명을 입력해주세요.",
                                            style: TextStyle(color: Colors.black),
                                          ))))),
                        ],
                      );
                    }
                  )
          )
              : Container();
        }
    );
  }

  @override
  bool get wantKeepAlive => true;
}
