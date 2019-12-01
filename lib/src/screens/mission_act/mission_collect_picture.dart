import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/mission_act/bloc.dart';
import 'package:deal/src/blocs/mission_detail/bloc.dart';
import 'package:deal/src/custom/dialogs/simple_list_dialog.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/custom/widgets/custom_indicator.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/screens/mission_create/modules/custom_image_delegate.dart';
import 'package:deal/src/services/file_service.dart';
import 'package:deal/src/services/point_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zefyr/zefyr.dart';
import 'package:quill_delta/quill_delta.dart';

class CollectPictureScreen extends StatefulWidget {

  final MissionDetailState state;
  final int missionId;

  const CollectPictureScreen({Key key, this.state, this.missionId}) : super(key: key);

  @override
  CollectPictureScreenState createState() {
    return CollectPictureScreenState();
  }
}

class CollectPictureScreenState extends State<CollectPictureScreen> {

  final List<String> _images = List<String>();
  final FileService fs = FileService();

  MissionActBloc _missionActBloc;
  MissionDetailBloc _missionDetailBloc;

  PageController controller;

  @override
  void initState() {
    super.initState();
    this.controller = PageController();

    this._missionActBloc = BlocProvider.of<MissionActBloc>(context);
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

  @override
  Widget build(BuildContext ctx) {
    return CommonAppBarContainer(
        text: "의뢰수행 (이미지 수집)",
        child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  PageIndicator(
                    layout: PageIndicatorLayout.COLOR,
                    size: 4,
                    controller: controller,
                    space: 3.0,
                    count: 2,
                    borderWidth: 1.0,
                    activeColor: Color(0xff333333),
                    borderColor: Color(0xff333333),
                    color: Colors.transparent,
                    clipArea: false,
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    flex: 1,
                    child: PageView(
                      controller: controller,
                      children: <Widget>[
                        Center(
                            child: ZefyrView(
                              document: NotusDocument.fromDelta(Delta()..insert(
                                  widget.state.missionInstruction.replaceAll("⏎", "\n").replaceAll("¶ ", "")
                              )),
                              imageDelegate: CustomImageDelegate(),
                            )
                        ),

                        Container(
                          child: Column(
                            children: <Widget>[
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
                                                "'+' 버튼을 눌러, 사진을 업로드 해주세요.",
                                                style: TextStyle(color: Colors.black, height: 1.5, fontSize: 14)
                                            )
                                        )
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
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

                                            ImageSource source = await showDialog<ImageSource>(
                                                context: context,
                                                builder: (ctx) => SimpleListDialog<ImageSource>(
                                                  title: '목록',
                                                  options: [{'갤러리': ImageSource.gallery}, {'카메라': ImageSource.camera}],
                                                ));

                                            File image;
                                            Response res;
                                            try {
                                              image = await ImagePicker.pickImage(source: source ?? ImageSource.camera, maxWidth: 300.0);
                                              res = await this.uploadCollectImages(accessToken: "", image: image);
                                            } catch(e) {
                                              Fluttertoast.showToast(msg: "서버 에러가 발생했습니다. ($e)");
                                              print(e);
                                            }

                                            if( (res.data as String).isNotEmpty ){
                                              setState(() { this._images.add(res.data); });
                                            }

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
                          ),
                        ),
                      ],
                    )
                  )
                ],
              )
          )
    );
  }
}
