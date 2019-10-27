import 'dart:convert';

import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/verified/bloc.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/custom/widgets/custom_progress_hud.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VerifyAccountPage extends StatefulWidget {

  @override
  State createState() => VerifyAccountPageState();
}

class VerifyAccountPageState extends State<VerifyAccountPage> {

  VerificationBloc _verificationBloc;

  PanelController _panelController;

  TextEditingController _bankController;
  TextEditingController _accountNumController;
  TextEditingController _accountOwnerController;

  List<Map<String, String>> _banks;

  int index = 1;

  @override
  void initState() {
    this._verificationBloc = BlocProvider.of<VerificationBloc>(context);

    this._panelController = PanelController();
    this._bankController = TextEditingController();
    this._accountNumController = TextEditingController();
    this._accountOwnerController = TextEditingController();

    this._banks = [
      {"res/images/bank_nh.png":"NH농협은행"},
      {"res/images/bank_ibk.png":"IBK기업은행"},
      {"res/images/bank_kb.png":"KB국민은행"},
      {"res/images/bank_kakao.png":"카카오뱅크"},
      {"res/images/bank_woori.png":"우리은행"}
    ];
    super.initState();
  }

  @override
  void dispose() {
    this._bankController.dispose();
    this._accountNumController.dispose();
    this._accountOwnerController.dispose();
    super.dispose();
  }

  void _onAuthPressed(){
    if(_bankController.text.isEmpty || _accountNumController.text.isEmpty || _accountOwnerController.text.isEmpty){
      Fluttertoast.showToast(msg: "입력값을 확인해주세요.");
    } else {
      String data = jsonEncode({ 'bank' : _bankController.text, 'accnum': _accountNumController.text, 'owner': _accountOwnerController.text });
      _verificationBloc.add(VerificationRequest(VerificationType.ACCOUNT, data));
    }
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<VerificationBloc, VerificationState>(
        listener: (ctx, state) {
          if (state is Verifying) {
            setState(() { this.index = 1; });

          } else if (state is Verified && state.accountVerified) {
            setState(() { this.index = 0; });
            Fluttertoast.showToast(msg: "인증에 성공했습니다.");
            Navigator.pop(ctx);

          } else if (state is Verified && !state.accountVerified ) {
            setState(() { this.index = 1; });
            Fluttertoast.showToast(msg: "인증에 실패했습니다.");
          }
        },
        child: SlidingUpPanel(
            panel: Container(
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.all(20),
              child: ListView.separated(
                itemCount: this._banks.length,
                separatorBuilder: (context, i) {
                  return Divider(height: 1, color: Color(0xffe3e3e3));
                },
                itemBuilder: (BuildContext context, int i){
                  return GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(this._banks[i].keys.first, height: 20,),
                          Text("${this._banks[i].values.first}",
                            style: TextStyle(fontSize: 16.0, color: Colors.black54, fontWeight: FontWeight.w500, decoration: TextDecoration.none),
                          )
                        ],
                      ),
                    ),
                    onTap: (){
                      this._bankController.text = this._banks[i].values.first;
                      this._panelController.close();
                    }
                  );
                },
              ),
            ),
            controller: _panelController,
            minHeight: 0.0,
            maxHeight: 320.0,
            backdropEnabled: true,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(13.0),
              topRight: Radius.circular(13.0),
            ),
            boxShadow: [],
            defaultPanelState: PanelState.CLOSED,
            body: CommonAppBarContainer(
              text: '계좌 연결',
              child: IndexedStack(
                  index: this.index,
                  children: <Widget>[
                    Container(
                        color: Colors.white,
                        child: SpinKitThreeBounce(
                          color: Color(0xffF7CF00),
                          size: 20.0,
                        )
                    ),
                    BlocListener<VerificationBloc, VerificationState>(
                      listener: (ctx, state){ },
                      child: BlocBuilder<VerificationBloc, VerificationState>(
                        builder: (ctx, state){
                          return Container(
                              child: SizedBox.expand(
                                  child: Container(
                                      color: Color(0xffefefef),
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                          children: <Widget>[
                                            GestureDetector(
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(color: Colors.black26, width: 0.5),
                                                      borderRadius: BorderRadius.only(
                                                          topLeft:  const Radius.circular(5.0),
                                                          topRight: const Radius.circular(5.0)
                                                      )
                                                  ),
                                                  padding: EdgeInsets.all(20),
                                                  width: double.infinity,
                                                  height: 70,
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(child: TextFormField(
                                                        enabled: false,
                                                        autovalidate: false,
                                                        autocorrect: false,
                                                        controller: _bankController,
                                                        scrollPadding: EdgeInsets.zero,
                                                        decoration: InputDecoration(
                                                            labelText: "은행",
                                                            fillColor: Colors.white,
                                                            hasFloatingPlaceholder: true,
                                                            contentPadding: EdgeInsets.zero,
                                                            border: InputBorder.none,
                                                            labelStyle: TextStyle(color: Colors.black45)
                                                        ),
                                                        textAlign: TextAlign.start,
                                                        style: TextStyle(
                                                            fontSize: 15, color: Colors.black, height: 1.0, fontWeight: FontWeight.w600, textBaseline: TextBaseline.alphabetic
                                                        ),
                                                      )),
                                                      Icon(Icons.arrow_drop_down, color: Colors.black87)
                                                    ],
                                                  )
                                              ),
                                              onTap: (){
                                                FocusScope.of(context).requestFocus(new FocusNode());
                                                this._panelController.open();
                                              },
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(color: Colors.black26, width: 0.5),
                                                ),
                                                padding: EdgeInsets.all(20),
                                                width: double.infinity,
                                                height: 70,
                                                child: TextFormField(
                                                  controller: _accountNumController,
                                                  autovalidate: false,
                                                  autocorrect: false,
                                                  scrollPadding: EdgeInsets.zero,
                                                  keyboardType: TextInputType.number,
                                                  decoration: InputDecoration(
                                                      labelText: "계좌번호",
                                                      fillColor: Colors.white,
                                                      hasFloatingPlaceholder: true,
                                                      contentPadding: EdgeInsets.zero,
                                                      border: InputBorder.none,
                                                      labelStyle: TextStyle(color: Colors.black45, fontSize:16)
                                                  ),
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize: 15, color: Colors.black, height: 1.0, fontWeight: FontWeight.w600, textBaseline: TextBaseline.alphabetic
                                                  ),
                                                )
                                            ),
                                            Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(color: Colors.black26, width: 0.5),
                                                    borderRadius: BorderRadius.only(
                                                        bottomLeft:  const Radius.circular(5.0),
                                                        bottomRight: const Radius.circular(5.0)
                                                    )
                                                ),
                                                padding: EdgeInsets.all(20),
                                                width: double.infinity,
                                                height: 70,
                                                child: TextFormField(
                                                  controller: this._accountOwnerController,
                                                  autovalidate: false,
                                                  autocorrect: false,
                                                  scrollPadding: EdgeInsets.zero,
                                                  keyboardType: TextInputType.number,
                                                  decoration: InputDecoration(
                                                      labelText: "생년월일(6자리)",
                                                      fillColor: Colors.white,
                                                      hasFloatingPlaceholder: true,
                                                      contentPadding: EdgeInsets.zero,
                                                      border: InputBorder.none,
                                                      labelStyle: TextStyle(color: Colors.black45, fontSize:16)
                                                  ),
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize: 15, color: Colors.black, height: 1.0, fontWeight: FontWeight.w600, textBaseline: TextBaseline.alphabetic
                                                  ),
                                                )
                                            ),
                                            SizedBox(height: 30),
                                            WhiteRoundButton(text: '계좌 인증', onPressed: _onAuthPressed, buttonColor: Color(0xFF5f75ac), textColor: Colors.white)
                                          ]
                                      )
                                  )
                              )
                          );
                        },
                      ),
                    )
                  ]
              )
          )
        )
    );
  }
}
