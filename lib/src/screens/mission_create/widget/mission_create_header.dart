import 'package:deal/src/blocs/inquiry/bloc.dart';
import 'package:deal/src/custom/dialogs/date_range_picker.dart';
import 'package:deal/src/custom/dialogs/simple_list_dialog.dart';
import 'package:deal/src/custom/widgets/badge.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/qna/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_date_pickers/flutter_date_pickers.dart';
import 'package:intl/intl.dart';

import 'mission_create_textform_field.dart';


class MissionCreateHeader extends StatefulWidget {

  @override
  State createState() => MissionCreateHeaderState();
}


class MissionCreateHeaderState extends State<MissionCreateHeader> {

  DateTime _startDatetime;
  DateTime _endDatetime;
  String _periodPlaceHolder;
  int _periodDays;
  String _selectedCategory;

  @override
  void initState() {
    super.initState();
    _selectedCategory = "종류";
    _periodPlaceHolder = "날짜를 선택해주세요";
    _periodDays = 0;
  }

  @override
  Widget build(BuildContext context) {
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
//                        Text("신발에 점찍기", style: TextStyle(color: Color(0xFF333333), fontSize: 16, fontWeight: FontWeight.w700)),
                        Container(child: MissionCreateTextFormField(placeholder: "제목을 입력해주세요", textSize: 18), width:200, padding: EdgeInsets.zero, margin: EdgeInsets.zero,),
                        SizedBox(height: 5,),
                        Container(child: MissionCreateTextFormField(placeholder: "부제목을 입력해주세요", textSize: 14), width:200),
                        //Text("신발에 점만 찍으면 돼요!", style: TextStyle(color: Color(0xFF444444), fontSize: 13)),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(width: 32, height: 32, child: IconButton(
                              icon: Image.asset("res/images/app-logo-black.png"),
                              iconSize: 32,
                              padding: EdgeInsets.all(0),
                            )),
                            Row(
                              children: <Widget>[
                                Container(
                                    child: MissionCreateTextFormField(
                                      placeholder: "포인트",
                                      textSize: 15,
                                      textAlign: TextAlign.right,
                                      textInputType: TextInputType.number
                                    ),
                                    width:60
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 3),
                                  child: Text("/", style: TextStyle(fontSize: 15, color: Colors.black)),
                                ),
                                Container(
                                    child: MissionCreateTextFormField(
                                      placeholder: "단위",
                                      textSize: 15,
                                      textAlign: TextAlign.right,
                                      textInputType: TextInputType.number
                                    ),
                                    width: 40
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
            ),
            SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.calendar_today, size: 16, color: Color(0xFF5f75ac),),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () async {
                            DatePeriod selectedDatetime = await showDialog(context: context, builder: (ctx)=>DateRangePickerDialog());
                            String _formatStartDate = DateFormat('yyyy-MM-dd').format(selectedDatetime.start);
                            String _formatEndDate = DateFormat('yyyy-MM-dd').format(selectedDatetime.end);

                            setState(() {
                              _startDatetime = selectedDatetime.start;
                              _endDatetime = selectedDatetime.end;
                              _periodPlaceHolder = "$_formatStartDate ~ $_formatEndDate";
                              _periodDays = _endDatetime.difference(_startDatetime).inDays;
                            });
                          },
                          child: Text(
                              _periodPlaceHolder,
                              style: TextStyle(letterSpacing:-0.8, color: Color(0xFF5f75ac), fontWeight: FontWeight.w700)
                          ),
                        ),
                        SizedBox(width: 5),
                        Badge(text: "$_periodDays일",),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () async {
                            String _result = await showDialog(context: context, builder: (ctx)=> SimpleListDialog(
                              title: '분류',
                              options: ['수집', '가공'],
                            ));
                            setState(() { _selectedCategory = _result; });
                          },
                          child: Badge(text: "$_selectedCategory", color: (_selectedCategory != "종류")? Color(0xFF5f75ac) : Colors.black45 )
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx){
                                  return BlocProvider<InquiryBloc>(
                                    builder: (BuildContext ctx) => InquiryBloc(
                                        RepositoryProvider.of<UserRepository>(context)
                                    ),
                                    child: QuestionPage()
                                  );
                                },
                                fullscreenDialog: true
                            ));
                        },
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 20, height: 20, child: IconButton(
                            icon: Image.asset("res/images/emoji-tired.png"),
                            iconSize: 16,
                            padding: EdgeInsets.all(0),
                          )),
                          Text("문의하기", style: TextStyle(letterSpacing:-0.5, fontSize: 12, color: Color(0xff333333),))
                        ],
                      )
                    ),
                  ],
                )
            )
          ],
        )
    );
  }

}