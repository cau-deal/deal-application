import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/custom/widgets/styled_textform_field.dart';
import 'package:deal/src/custom/widgets/white_round_button.dart';
import 'package:deal/src/protos/CommonResult.pbenum.dart';
import 'package:deal/src/screens/mission_create/widget/content_header.dart';
import 'package:deal/src/screens/point_credit/payments/kakaopay.dart';
import 'package:deal/src/services/point_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PointWithDrawPage extends StatefulWidget {
  @override
  PointWithDrawPageState createState() {
    return PointWithDrawPageState();
  }
}

class PointWithDrawPageState extends State<PointWithDrawPage> {

  TextEditingController priceController;
  TextEditingController accountController;

  @override
  void initState() {
    super.initState();
    this.priceController = TextEditingController();
    this.accountController = TextEditingController();
    this.priceController.text = "0";
    this.accountController.text = "665-02-376197";
  }

  @override
  void dispose() {
    this.priceController.dispose();
    this.accountController.dispose();
    super.dispose();
  }

  Future test() async {
    PointService ps = await PointService.init();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String token = preferences.getString('ticket') ?? "";
    var res = await ps.withdraw(accessToken: token, amount: int.parse(this.priceController.text));
    print(res);

    if(res.result.resultCode == ResultCode.SUCCESS){ Navigator.pop(context); }
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext ctx, bool b){

          return [
            SliverAppBar(
              brightness: Brightness.light,
              elevation: 0,
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                  child: Container(
                    height: 120,
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("출금할 금액을 입력해주세요.", style: TextStyle(color: Colors.black87, fontSize: 16)),
                        SizedBox(height: 15),
                        Container(
                            height: 45,
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Image.asset("res/images/logo@210.png"),
                                Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          LengthLimitingTextInputFormatter(10),
                                          WhitelistingTextInputFormatter.digitsOnly,
                                          BlacklistingTextInputFormatter.singleLineFormatter,
                                        ],
                                        textAlign: TextAlign.right,
                                        controller: priceController,
                                        decoration: InputDecoration.collapsed(
                                            fillColor: Colors.white,
                                            hasFloatingPlaceholder: false,
                                            hintText: ""
                                        ),
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            textBaseline: TextBaseline.alphabetic
                                        ),
                                      )
                                  ),
                                ),
                                Text("원", style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ))
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFF5f75ac),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                            )
                        )
                      ],
                    ),
                  ),
                  preferredSize: Size.fromHeight(120.0)
              ),
              automaticallyImplyLeading: false,
              titleSpacing: 0,
              title: IconButton(
                  onPressed: () { Navigator.pop(context); },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 15)
              ),
            )
          ];
        },
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 0),
            child: Column(
              children: <Widget>[
                Container(color: Color(0xffeeeeee), height: 15),
                Container(
                    color: Colors.white,
                    height: 120,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 15),
                        Text("출금할 계좌를 선택해주세요.", style: TextStyle(
                            color: Colors.black87, fontSize: 16, fontFamily: "NanumSquare", decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500
                        ), textAlign: TextAlign.start,),
                        SizedBox(height: 15),
                        MediaQuery.removePadding(
                            context: ctx,
                            removeTop: true,
                            child: Container(
                                height: 45,
                                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      child: Padding(
                                          padding: EdgeInsets.all(5),
                                          child: TextField(
                                            keyboardType: TextInputType.number,
                                            inputFormatters: <TextInputFormatter>[
                                              LengthLimitingTextInputFormatter(10),
                                              WhitelistingTextInputFormatter.digitsOnly,
                                              BlacklistingTextInputFormatter.singleLineFormatter,
                                            ],
                                            textAlign: TextAlign.right,
                                            controller: accountController,
                                            decoration: InputDecoration.collapsed(
                                                fillColor: Colors.white,
                                                hasFloatingPlaceholder: false,
                                                hintText: ""
                                            ),
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                textBaseline: TextBaseline.alphabetic
                                            ),
                                          )
                                      ),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF5f75ac),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                )
                            )
                        )
                      ],
                    )
                ),
                Container(color: Color(0xffeeeeee), height: 15),
                Expanded(
                    child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ContentHeader(label: "개인정보 수집 및 이용 동의"),
                            SizedBox(height: 15),
                            Container(
                              height: 300,
                              child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in trud exercitation ullamco laboris nisi ut aliquip ex ea commod",
                                  style: TextStyle(fontSize: 14, color: Colors.black87, decoration: TextDecoration.none, fontFamily: "NanumSquare", fontWeight: FontWeight.w500, height: 1.5)
                              ),
                            )
                          ],
                        )
                    )
                ),
                Container(color: Color(0xffeeeeee), height: 15),
                Container(
                    color: Colors.white,
                    height: 70,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: WhiteRoundButton(
                      buttonColor: Color(0xFF5f75ac),
                      textColor: Colors.white,
                      text: '동의 및 출금요청',
                      onPressed: (accountController.text.isNotEmpty && priceController.text.isNotEmpty)? (){
                        test();
                      } : null,
                    )
                ),
              ],
            )
        ),
      )
    );
  }
}