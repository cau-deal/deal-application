import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_crashlytics/flutter_crashlytics.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/blocs/auth/bloc.dart';
import 'src/repositories/user_repository.dart';

SharedPreferences sharedPreferences;

void main() async {

  bool isInDebugMode = false;
  sharedPreferences = await SharedPreferences.getInstance();

  FlutterError.onError = (FlutterErrorDetails details) {
    if (isInDebugMode) {
      FlutterError.dumpErrorToConsole(details);
    } else {
      Zone.current.handleUncaughtError(details.exception, details.stack);
    }
  };

  await FlutterCrashlytics().initialize();

  runZoned<Future<Null>>(() async {

    final UserRepository userRepository = UserRepository();

    runApp(
      BlocProvider(
          builder: (context) => AuthenticationBloc(userRepository: userRepository)..dispatch(AppStarted()),
          child: App(userRepository: userRepository)
      )
    );

  }, onError: (error, stackTrace) async {
    await FlutterCrashlytics().reportCrash(error, stackTrace, forceCrash: false);
  });

}