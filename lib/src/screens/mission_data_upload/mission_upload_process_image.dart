import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/screens/mission_create/widget/content_header.dart';
import 'package:deal/src/screens/mission_create/widget/mission_create_textform_field.dart';
import 'package:deal/src/services/file_service.dart';
import 'package:deal/src/services/point_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_tags/tag.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UploadProcessImage extends StatefulWidget {

  final List<String> images;
  final List<String> labels;

  const UploadProcessImage({Key key, this.images, this.labels}) : super(key: key);

  @override
  UploadProcessImageState createState() {
    return UploadProcessImageState();
  }
}

class UploadProcessImageState extends State<UploadProcessImage> {

  final GlobalKey<TagsState> _tagStateKey = GlobalKey<TagsState>();
  final TextEditingController _controller = TextEditingController();

  final List<String> _items = List<String>();
  final List<String> _images = List<String>();

  final FileService fs = FileService();

  @override
  void initState() {
    super.initState();
    _images.add("+");

    if(widget.images.length > 0) _images.addAll(widget.images);
    if(widget.labels.length > 0) _items.addAll(widget.labels);

  }

  @override
  void dispose() {
    super.dispose();
  }

  void addNewLabel(String label){
    setState(() {
      final List<String> lst = _items.where((l) => l == label).toList();
      if (lst.isNotEmpty) { Fluttertoast.showToast(msg: "레이블이 존재합니다."); return; }
      else { _items.add(label); _controller.text = ""; }
    });
  }

  Future<Response<String>> uploadProcessImages({String accessToken, File image}) async {
    return fs.uploadMissionImages(accessToken: "", image: image);
  }

  @override
  Widget build(BuildContext ctx) {
    return CommonAppBarContainer(
        text: "의뢰등록 (이미지 가공)",
        onBackPressed: (){
          Navigator.pop(context, { 'images': <String>[], 'labels': <String>[] });
        },
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ContentHeader(label: "의뢰 할 이미지"),
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
                                "'+' 버튼을 누른 후, 사진을 업로드 해주세요.",
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
                            File image;
                            Response res;

                            try {
                              image = await ImagePicker.pickImage(source: ImageSource.gallery, maxWidth: 300.0);
                              res = await this.uploadProcessImages(accessToken: "", image: image);
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
              SizedBox(height: 30),


              ContentHeader(label: "이미지 레이블"),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 30,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(right: 10),
                      color: Color(0xffeeeeee),
                      child: TextField(
                        maxLines: 1,
                        controller: _controller,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            textBaseline: TextBaseline.alphabetic
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: "여기에 레이블을 입력해주세요",
                          hintStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              height: 1.0,
                              textBaseline: TextBaseline.alphabetic
                          ),
                        ),
                        onSubmitted: (str){ this.addNewLabel(str); },
                        textAlign: TextAlign.right,
                      ),
                    )
                  ),
                  Container(
                    width: 60,
                    height: 30,
                    child: WhiteRoundButton(
                        text: "추가",
                        textColor: Colors.white,
                        buttonColor: Color(0xFF5f75ac),
                        icon: null,
                        onPressed: (){
                          this.addNewLabel(_controller.text);
                        }
                    )
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                child: Tags(
                  key:_tagStateKey,
                  itemCount: _items.length,
                  alignment: WrapAlignment.start,// required
                  itemBuilder: (int index){
                    final item = _items[index];
                    return ItemTags(
                      // Each ItemTags must contain a Key. Keys allow Flutter to
                      // uniquely identify widgets.
                      key: Key(index.toString()),
                      index: index, // required
                      title: item,
                      textStyle: TextStyle( fontSize: 14, color: Colors.black ),
                      combine: ItemTagsCombine.withTextBefore,
                      removeButton: ItemTagsRemoveButton(),
                      onRemoved: (){
                        setState(() { _items.removeAt(index); });
                      },
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: Color(0xFF5f75ac), width: 0.5),
                      activeColor: Colors.white,
                      textActiveColor: Colors.black,
                      pressEnabled: false,
                      elevation: 0,
                    );
                  },
                )
              ),

              SizedBox(height: 50),
              Container(
                height: 40,
                child: WhiteRoundButton(
                    buttonColor: Color(0xFF5f75ac),
                    textColor: Colors.white,
                    text: '등록하기',
                    onPressed: (this._images.length > 1 && this._items.length > 0)? (){
                      Navigator.pop(context, { 'images': _images.sublist(1), 'labels': _items });
                    } : null
                ),
              )
            ],
        )

    )
    );
  }
}
