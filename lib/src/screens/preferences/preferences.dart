import 'package:deal/generated/i18n.dart';
import 'package:deal/src/blocs/auth/auth_bloc.dart';
import 'package:deal/src/blocs/auth/auth_event.dart';
import 'package:deal/src/blocs/inquiry/bloc.dart';
import 'package:deal/src/blocs/inquiry_history/bloc.dart';
import 'package:deal/src/custom/dialogs/confirm_dialog.dart';
import 'package:deal/src/custom/widgets/common_app_bar_container.dart';
import 'package:deal/src/repositories/deal_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/agreements/agreements.dart';
import 'package:deal/src/screens/preferences/screen/question_history.dart';
import 'package:deal/src/screens/preferences/widgets/preferences_custom_action.dart';
import 'package:deal/src/screens/preferences/widgets/preferences_custom_dialog_link.dart';
import 'package:deal/src/screens/preferences/widgets/preferences_custom_link.dart';
import 'package:deal/src/screens/preferences/widgets/preferences_custom_switch.dart';
import 'package:deal/src/screens/preferences/widgets/preferences_custom_text.dart';
import 'package:deal/src/screens/preferences/widgets/preferences_custom_title.dart';
import 'package:deal/src/screens/qna/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info/package_info.dart';

import 'widgets/preferences_page.dart';

class PreferencesPage extends StatefulWidget {
  @override
  PreferencesState createState() {
    return PreferencesState();
  }
}

class PreferencesState extends State<PreferencesPage> {
  String appVersion = "";

  @override
  Widget build(BuildContext ctx) {
    return new CommonAppBarContainer(
        showBottomBorder: false,
        text: S.of(ctx).title_preferences,
        child: Scaffold(
            body: Container(
                color: Colors.white,
                child: MediaQuery.removePadding(
                    context: ctx,
                    removeTop: true,
                    child: Theme(
                      data: Theme.of(ctx).copyWith(
                          accentColor: Colors.white,
                          toggleableActiveColor: Color(0xff5F75AC),
                          textTheme: TextTheme(
                              title: TextStyle(color: Colors.black),
                              body1: TextStyle(color: Colors.black),
                              subhead: TextStyle(
                                color: Colors.black,
                                letterSpacing: -0.3,
                                fontSize: 15,
                                fontFamily: "NanumSquare",
                              ))),
                      child: PreferenceCustomPage([
                        PreferenceCustomPageLink(
                          "공지사항",
                          page: Container(),
                        ),
                        PreferenceCustomAction(
                          "문의하기",
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                              return BlocProvider<InquiryBloc>(
                                  builder: (BuildContext ctx) => InquiryBloc(RepositoryProvider.of<UserRepository>(context)), child: QuestionPage());
                            }));
                          },
                        ),
                        PreferenceCustomPageLink(
                          "문의내역",
                          page: BlocProvider<InquiryHistoryBloc>(
                            builder: (context) => InquiryHistoryBloc(
                                dealRepository: RepositoryProvider.of<DealRepository>(context),
                                userRepository: RepositoryProvider.of<UserRepository>(context))
                              ..add(Fetch()),
                            child: Container(color: Colors.white, child: QuestionHistoryScreen()),
                          ),
                        ),

                        PreferenceCustomTitle('Personalization'),
                        PreferenceCustomPageLink(
                          "출금 설정",
                          page: Container(),
                        ),

                        PreferenceCustomTitle('Notification'),
                        PreferenceCustomSwitch(
                          '푸쉬 수신',
                          'pref_receive_notification',
                          defaultVal: true,
                        ),

                        PreferenceCustomTitle('Authentication'),
                        PreferenceCustomPageLink(
                          "비밀번호 변경",
                          page: Container(),
                        ),
                        PreferenceCustomDialogLink(
                          '로그아웃',
                          dialog: ConfirmDialog(content: "로그아웃 하시겠습니까?", ternary: false),
                          onPop: (){
                            BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
                            Navigator.of(context).popUntil((route) => route.isFirst);
                          },
                        ),

                        PreferenceCustomTitle('Version'),
                        PreferenceCustomText(
                          title: "버전정보",
                          subtitle: appVersion,
                        ),

                        PreferenceCustomTitle('Services'),
                        PreferenceCustomAction(
                          "서비스 이용약관",
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => AgreementsPage()));
                          },
                        ),
                        PreferenceCustomPageLink(
                          "오픈소스 라이센스",
                          page: Container(),
                        ),

//                  PreferenceCustomPageLink(
//                    'Notifications',
//                    pageTitle: "test",
//                    page: PreferenceCustomPage([
//                      PreferenceCustomTitle('New Posts'),
//                      SwitchPreference(
//                        'New Posts from Friends',
//                        'notification_newpost_friend',
//                        defaultVal: true,
//                      ),
//                      PreferenceCustomTitle('Private Messages'),
//                      SwitchPreference(
//                        'Private Messages from Friends',
//                        'notification_pm_friend',
//                        defaultVal: true,
//                      ),
//                      SwitchPreference(
//                        'Private Messages from Strangers',
//                        'notification_pm_stranger',
//                        onEnable: () async {
//                          // Write something in Firestore or send a request
//                          await Future.delayed(Duration(seconds: 1));
//
//                          print('Enabled Notifications for PMs from Strangers!');
//                        },
//                        onDisable: () async {
//                          // Write something in Firestore or send a request
//                          await Future.delayed(Duration(seconds: 1));
//
//                          // No Connection? No Problem! Just throw an Exception with your custom message...
//                          throw Exception('No Connection');
//
//                          print('Disabled Notifications for PMs from Strangers!');
//                        },
//                      ),
//                    ]),
//                  ),
                      ]),
                    )))));
  }

  @override
  void initState() {
    super.initState();
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      setState(() {
        appVersion = packageInfo.version;
      });
    });
  }
}
