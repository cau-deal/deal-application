import 'dart:async';
import 'dart:convert';

import 'package:deal/src/custom/dialogs/confirm_dialog.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/screens/mission_create/modules/custom_image_delegate.dart';
import 'package:flutter/material.dart';
import 'package:zefyr/zefyr.dart';


class MissionCreateEditor extends StatefulWidget {

  final NotusDocument doc;

  const MissionCreateEditor({Key key, this.doc}) : super(key: key);

  @override
  _MissionCreateEditorState createState(){
    return _MissionCreateEditorState();
  }
}

class _MissionCreateEditorState extends State<MissionCreateEditor> {

  ZefyrController _controller;
  FocusNode _focusNode;
  StreamSubscription<NotusChange> _sub;

  num loadingState = 0;

  @override
  void initState() {
    _focusNode = FocusNode();
    setState(() {
      NotusDocument _doc = widget.doc;
      _controller = ZefyrController(_doc);
      /*_sub = _controller.document.changes.listen((change) {
//      print('${change.source}: ${change.change}');
      });*/
      loadingState = 1;
    });

    super.initState();
  }

  @override
  void dispose() {
    //_sub.cancel();
//    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ZefyrThemeData(
      cursorColor: Colors.black,
      paragraphTheme: StyleTheme(
          textStyle: TextStyle(
              fontSize: 16.0,
              height: 1.25,
              fontWeight: FontWeight.normal,
              color: Colors.grey.shade800
          )
      ),
      //selectionColor: Color(0xFF5f75ac),
      toolbarTheme: ZefyrToolbarTheme.fallback(context).copyWith(
        color: Colors.grey.shade800,
        toggleColor: Colors.grey.shade900,
        iconColor: Colors.white,
        disabledIconColor: Colors.grey.shade500,
      ),
    );

    return CommonAppBarContainer(
      text: "의뢰 수정",
      onBackPressed: () async{
        ConfirmAction confirm = await showDialog<ConfirmAction>(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => ConfirmDialog(content: "의뢰내용을 저장하시겠습니까?",)
        );
        if( confirm == ConfirmAction.ACCEPT ){
          Navigator.pop(context, _controller.document);
        } else if( confirm == ConfirmAction.DELETE ) {
          Navigator.pop(context);
        }
      },
      child: IndexedStack(
        index: this.loadingState,
        children: <Widget>[
          Center(child: CircularProgressIndicator()),
          Scaffold(
            resizeToAvoidBottomPadding: true,
            body: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 0)
                ),
                child: ZefyrScaffold (
                  child: ZefyrTheme(
                    data: theme,
                    child: ZefyrEditor(
                      controller: _controller,
                      focusNode: _focusNode,
                      mode: ZefyrMode.edit,
                      imageDelegate: CustomImageDelegate(),
                    ),
                  ),
                )
            ),
          )
        ],
      )
    );
  }

}