import 'dart:io';

import 'package:deal/src/blocs/mission_create/bloc.dart';
import 'package:deal/src/custom/dialogs/confirm_dialog.dart';
import 'package:deal/src/custom/widgets/under_circle_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class MissionCreateTabContainer extends StatefulWidget {

  final int idx;

  final Widget header;
  final List<String> items;
  final Widget tabBarView;

  MissionCreateTabContainer({@required this.header, @required this.items, @required this.tabBarView, @required this.idx})
      : assert(tabBarView != null),
        assert(items != null);

  @override
  MissionCreateTabContainerState createState() => MissionCreateTabContainerState();
}

class MissionCreateTabContainerState extends State<MissionCreateTabContainer> {

  File thumbnail;
  double uploadPercent = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.items.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                brightness: Brightness.light,
                expandedHeight: 320.0,
                elevation: 0,
                backgroundColor: Colors.white,
                floating: true,
                pinned: true,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                    background: GestureDetector(
                      child: BlocListener<MissionCreateBloc, MissionCreateState>(
                        listener: (ctx, state) {

                        },
                        child: BlocBuilder<MissionCreateBloc, MissionCreateState>(
                            builder: (ctx, state){

                              if(thumbnail == null){
                                return  Container(
                                    color: Color(0xffe6e6e6),
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(bottom: 100.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset("res/images/default_thumbnail.png"),
                                        Text("이미지를 등록해주세요", style: TextStyle(color: Color(0xffb8b8b8), fontWeight: FontWeight.w700, letterSpacing: -0.4, fontSize: 18))
                                      ],
                                    )
                                );

                              } else if(state.isThumbnailUploading) {
                                print(state.uploadPercentage);
                                return Stack(
                                  children: <Widget>[
                                    Container(
                                        decoration: new BoxDecoration(
                                            image: DecorationImage(
                                              image: FileImage(this.thumbnail),
                                              fit: BoxFit.fill,
                                            )
                                        )
                                    ),
                                    Container(
                                      color: Color(0xFF000000).withOpacity(0.5),
                                      padding: EdgeInsets.only(bottom: 100.0),
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: CircularProgressIndicator(
                                        value: state.uploadPercentage,
                                        backgroundColor: Colors.white,
                                      ),
                                      alignment: Alignment.center,
                                    )
                                  ],
                                );
                              } else {
                                return Container(
                                    decoration: new BoxDecoration(
                                        image: DecorationImage(
                                          image: FileImage(this.thumbnail),
                                          fit: BoxFit.fill,
                                        )
                                    )
                                );
                              }
                            }
                        ),
                      ),
                      onTap: () async{
                        //PermissionStatus permission = await PermissionHandler().checkPermissionStatus(PermissionGroup.photos);
                        /*if( permission == PermissionStatus.denied ){
                          Map<PermissionGroup, PermissionStatus> permissions = await PermissionHandler().requestPermissions([PermissionGroup.camera]);
                        }*/

                        // TODO MAX_WIDTH 설정할것.
                        File image = await ImagePicker.pickImage(source: ImageSource.gallery, maxWidth: 300.0);
                        setState(() { if(image != null) this.thumbnail = image; });
                        BlocProvider.of<MissionCreateBloc>(context).add(MissionThumbnailChanged(asset: image));
                      },
                    )
                ),
                titleSpacing: 0,
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(120.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          height: 80,
                          child: widget.header,
                          padding: EdgeInsets.only(left: 15, right: 15),
                        ),
                        UnderCircleTabBar(items: widget.items)
                      ],
                    )),
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 14,
                  padding: const EdgeInsets.only(left: 0.0, top: 10.0),
                  onPressed: () async {
                    ConfirmAction confirm = await showDialog<ConfirmAction>(
                        context: context,
                        barrierDismissible: false,
                        builder: (ctx) => ConfirmDialog(
                          content: "임시저장된 내용이 있습니다.\n불러올까요?",
                          ternary: false,
                        ));
                    if (confirm == ConfirmAction.ACCEPT) { Navigator.pop(context); }
                  },
                ),
              )
            ];
          },
          body: Container(color: Colors.white, child: widget.tabBarView),
        ));
  }
}
