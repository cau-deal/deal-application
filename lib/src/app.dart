import 'package:deal/main.dart';
import 'package:deal/generated/i18n.dart';
import 'package:deal/src/builders/conditional_builder.dart';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'screens/intro/intro.dart';
import 'screens/login/login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isSecondRun = sharedPreferences.getBool("isSecondRun") ?? false;

    return MaterialApp(

        onGenerateTitle: (BuildContext context) => S.of(context).appName,

        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales, // i18n
        localeResolutionCallback: S.delegate.resolution(fallback: new Locale("ko", ""), withCountry: false),

      theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          accentColor: Colors.cyan[600],

          // Define the default font family.
          fontFamily: 'NanumSquare',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),

      ),
      home: ConditionalBuilder(
          conditional: !isSecondRun,
          truthyBuilder: () => IntroPage(),
          falsyBuilder: () => LoginPage()
      )
    );

  }
}