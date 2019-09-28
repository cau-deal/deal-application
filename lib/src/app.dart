import 'package:deal/main.dart';
import 'package:flutter/material.dart';
import 'package:deal/src/builders/conditional_builder.dart';

import 'screens/intro/intro.dart';
import 'screens/login/login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isSecondRun = sharedPreferences.getBool("isSecondRun") ?? false;
    return ConditionalBuilder(
      conditional: !isSecondRun,
      truthyBuilder: () => IntroPage(),
      falsyBuilder: () => LoginPage()
    );
  }
}