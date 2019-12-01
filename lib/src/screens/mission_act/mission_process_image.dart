import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/mission_act/bloc.dart';
import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/custom/widgets/custom_indicator.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/screens/mission_create/modules/custom_image_delegate.dart';
import 'package:deal/src/services/file_service.dart';
import 'package:deal/src/services/point_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_crop/image_crop.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:zefyr/zefyr.dart';
import 'package:quill_delta/quill_delta.dart';

class ProcessPictureScreen extends StatefulWidget {

  final MissionDetailState state;
  final int missionId;

  const ProcessPictureScreen({Key key, this.state, this.missionId}) : super(key: key);

  @override
  ProcessPictureScreenState createState() {
    return ProcessPictureScreenState();
  }
}

class ProcessPictureScreenState extends State<ProcessPictureScreen> {

  final List<String> _images = List<String>();
  final FileService fs = FileService();

  final cropKey = GlobalKey<CropState>();
  
  MissionActBloc _missionActBloc;
  MissionDetailBloc _missionDetailBloc;

  PageController controller;

  @override
  void initState() {
    super.initState();
    this.controller = PageController();

    this._missionActBloc = BlocProvider.of<MissionActBloc>(context)..add(FetchProcessPicture(widget.missionId));
    this._missionDetailBloc = BlocProvider.of<MissionDetailBloc>(context);

    this._images.add("+");
  }

  @override
  void dispose() {

    this._missionActBloc.close();
    this._missionDetailBloc.close();

    super.dispose();
  }

  Future<Response<String>> uploadCollectImages({String accessToken, File image}) async {
    return fs.uploadCollectImages(accessToken: "", image: image);
  }

  List<Widget> generatePages(MissionActState state){
    var list = List.generate(state.images.length, (index){
      return Container(child:Column(
        children: <Widget>[
          Image.network(state.images[index]),
          GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1.0,
              children: this._images.map((file){
                return GridTile(
                    child: GestureDetector(
                      onTap: (file == '+')? () async {

                      } : () { setState(() { }); },
                      child: Container(
                          decoration: (file != '+')? BoxDecoration(
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(file),
                              fit: BoxFit.cover,
                            ),
                          ) : BoxDecoration(color: Colors.black54),
                          child: Center(
                            child: (file == '+')? Text('+', style: TextStyle(fontSize: 30),) : null,
                          )
                      ),
                    ));
              }).toList()
          ),
          SizedBox(height: 50),
          BlocListener<MissionActBloc, MissionActState>(
            listener: (ctx, state){
              if (state.isFailure) {
                Fluttertoast.showToast(msg: "제출에 실패하였습니다!");
              }
              if (state.isSuccess) {
                _missionDetailBloc.add(Fetch(widget.missionId));
                Fluttertoast.showToast(msg: "의뢰를 성공하였습니다!");
                Navigator.pop(ctx);
              }
            },
            child: Container(
              height: 40,
              child: WhiteRoundButton(
                  buttonColor: Color(0xFF5f75ac),
                  textColor: Colors.white,
                  text: '제출하기 (${this._images.length-1}/${widget.state.unit})',
                  onPressed: (this._images.length > 1 && (this._images.length-1) == widget.state.unit)? (){
//                                      Navigator.pop(context, { 'images': _images.sublist(1) });
                    this._missionActBloc.add(SubmitCollectPicture(
                        widget.missionId, this._images.sublist(1)
                    ));
                  } : null
              ),
            ),
          )
        ],
      ));
    });

    list.insert(0, Container(child: ZefyrView(
      document: NotusDocument.fromDelta(Delta()..insert(
          widget.state.missionInstruction.replaceAll("⏎", "\n").replaceAll("¶ ", "")
      )),
      imageDelegate: CustomImageDelegate(),
    )));

    return list;
  }

  @override
  Widget build(BuildContext ctx) {

    return CommonAppBarContainer(
        text: "의뢰수행 (이미지 가공)",
        child: Container(
            padding: EdgeInsets.all(10),
            child: BlocBuilder<MissionActBloc, MissionActState>(
              builder: (ctx, state){
                return Column(
                  children: <Widget>[
                    PageIndicator(
                      layout: PageIndicatorLayout.COLOR,
                      size: 4.0,
                      controller: controller,
                      space: 3.0,
                      count: state.images.length,
                      borderWidth: 1.0,
                      activeColor: Color(0xff333333),
                      borderColor: Color(0xff333333),
                      color: Colors.transparent,
                      clipArea: false,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 10),
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
                                            "다음 이미지에서 영역을 지정한 후 레이블을 선택해주세요",
                                            style: TextStyle(color: Colors.black, height: 1.5, fontSize: 14)
                                        )
                                    )
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(height: 10),
                    Expanded(
                        flex: 1,
                        child: PageView(
                          controller: controller,
                          children: generatePages(state)
                        )
                    )
                  ],
                );
              },
            )
        )
    );
  }
}
