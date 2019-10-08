import 'package:deal/main.dart';
import 'package:deal/generated/i18n.dart';
import 'package:deal/src/custom/builder/conditional_builder.dart';
import 'package:deal/src/custom/widgets/message_handler.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/screens/mission_list/mission_list.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'blocs/auth/bloc.dart';
import 'custom/widgets/double_back_to_close_app.dart';

import 'screens/login_select/login_select.dart';


class App extends StatelessWidget {

  final UserRepository _userRepository;

  App({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        onGenerateTitle: (BuildContext context) => S.of(context).appName,

        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        // i18n
        localeResolutionCallback: S.delegate.resolution(fallback: new Locale("ko", ""), withCountry: false),

        /*initialRoute: '/',
        routes: {
          '/': (context) => (),
          '/second': (context) => SecondScreen(),
        },*/

        theme: ThemeData(
          // Define the default brightness and colors.
            brightness: Brightness.dark,
            primaryColor: Color(0xFF5f75ac),
            accentColor: Color(0xFF5f75ac),

            // Define the default font family.
            fontFamily: 'NanumSquare',

            cursorColor: Colors.black,

            // Define the default TextTheme. Use this to specify the default
            // text styling for headlines, titles, bodies of text, and more.
//          textTheme: TextTheme(
//            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
//            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
//          ),

            buttonTheme: ButtonThemeData(
                buttonColor: Color(0xFF5f75ac),
                highlightColor: Color(0xFF5f75ac),
                splashColor: Color(0xFF5f75ac),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0))
            ),

            appBarTheme: AppBarTheme(
                elevation: 0,
                color: Colors.white,
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
                textTheme: TextTheme(
                    title: TextStyle(color: Colors.black)
                )
            )

        ),

        home: MessageHandler(
            child: DoubleBackToCloseApp(
                child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                    builder: (ctx, state) {
                      if (state is Authenticated)
                        return MissionListPage();
                      else
                        return LoginSelectPage(userRepository: _userRepository);
                    })
            )
        )
    );
  }

}