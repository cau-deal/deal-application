import 'package:deal/src/blocs/inquiry/bloc.dart';
import 'package:deal/src/blocs/inquiry/inquiry_state.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/screens/mission_detail/modules/custom_image_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zefyr/zefyr.dart';

class QuestionPage extends StatefulWidget {
  @override
  QuestionPageState createState() {
    return QuestionPageState();
  }
}

class QuestionPageState extends State<QuestionPage> {
  InquiryBloc _inquiryBloc;

  final TextEditingController _titleController = TextEditingController();
  final ZefyrController _controller = ZefyrController(NotusDocument());
  final FocusNode _focusNode = FocusNode();

  var list = [
    {"title": "비속어 및 공격적인 언어 사용"},
    {"title": "권리침해 및 사이버 괴롭힘"},
    {"title": "명의 도용"},
    {"title": "폭력적 위협"},
    {"title": "스팸 및 사기"},
    {"title": "기타"},
  ];

  bool get isPopulated => _titleController.text.isNotEmpty;

  bool isSubmitButtonEnabled(InquiryState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  void _onTitleChanged() {
    _inquiryBloc.add(TitleChanged(title: _titleController.text));
  }

  void _onContentChanged() {
    _inquiryBloc.add(ContentChanged(contents: _controller.document.toPlainText()));
  }

  @override
  void initState() {
    this._inquiryBloc = BlocProvider.of<InquiryBloc>(context);
    this._titleController.addListener(_onTitleChanged);
    this._controller.addListener(_onContentChanged);
    super.initState();
  }

  @override
  void dispose() {
    this._titleController.dispose();
    super.dispose();
  }

  Widget buildEditor() {
    final theme = ZefyrThemeData(
      paragraphTheme:
          StyleTheme(textStyle: TextStyle(fontSize: 14.0, height: 1.25, fontFamily: "NanumSquare", fontWeight: FontWeight.normal, color: Colors.grey.shade800)),
      toolbarTheme: ZefyrToolbarTheme.fallback(context).copyWith(
        color: Colors.grey.shade800,
        toggleColor: Colors.grey.shade900,
        iconColor: Colors.white,
        disabledIconColor: Colors.grey.shade500,
      ),
    );

    return ZefyrTheme(
      data: theme,
      child: ZefyrField(
        height: 200.0,
        decoration: InputDecoration(
          labelText: "문의 내용",
          labelStyle: TextStyle(color: Colors.black45, fontSize: 14),
        ),
        controller: _controller,
        focusNode: _focusNode,
        autofocus: false,
        imageDelegate: CustomImageDelegate(),
        physics: ClampingScrollPhysics(),
      ),
    );
  }

  @override
  Widget build(BuildContext ctx) {
    return CommonAppBarContainer(
        text: '문의하기',
        child: Scaffold(
          resizeToAvoidBottomPadding: true,
          backgroundColor: Colors.white,
          body: ZefyrScaffold(
            child: BlocListener<InquiryBloc, InquiryState>(
                listener: (ctx, state) {
                  if (state.isFailure) {
                    Fluttertoast.showToast(msg: "오류 발생!");
                  }
                  if (state.isSubmitting) {
                    Fluttertoast.showToast(msg: "전송중..");
                  }
                  if (state.isSuccess) {
                    Fluttertoast.showToast(msg: "성공");
                    Navigator.pop(ctx);
                  }
                },
                child: BlocBuilder<InquiryBloc, InquiryState>(
                  builder: (ctx, state) => Container(
                      padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: Column(
                        children: <Widget>[
                          StyledTextFormField(
                            placeholder: '문의 제목',
                            controller: this._titleController,
                          ),
                          SizedBox(height: 20),
                          Container(
                            alignment: Alignment.bottomCenter,
                            color: Color(0xffeeeeee),
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: 230.0,
                              ),
                              child: Scrollbar(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  reverse: true,
                                  child: SizedBox(
                                    height: 230.0,
                                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: buildEditor()),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 30),
                              child: WhiteRoundButton(
                                  buttonColor: Color(0xFF5f75ac),
                                  textColor: Colors.white,
                                  text: '문의하기',
                                  onPressed: isSubmitButtonEnabled(state)
                                      ? () {
                                          _inquiryBloc.add(Submitted(title: this._titleController.text, contents: this._controller.document.toPlainText()));
                                        }
                                      : null))
                        ],
                      )),
                )),
          ),
        ));
  }
}
