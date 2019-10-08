import 'dart:async';

import 'package:deal/src/services/auth_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_crashlytics/flutter_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/app.dart';
import 'src/blocs/auth/bloc.dart';
import 'src/repositories/user_repository.dart';

void main() async {

  bool isInDebugMode = false;

  FlutterError.onError = (FlutterErrorDetails details) {
    if (isInDebugMode) {
      FlutterError.dumpErrorToConsole(details);
    } else {
      Zone.current.handleUncaughtError(details.exception, details.stack);
    }
  };

  await FlutterCrashlytics().initialize();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runZoned<Future<Null>>(() async {

    final UserRepository userRepository = UserRepository(
      authService: await AuthService.init()
    );
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    runApp(
      BlocProvider(
          builder: (context) => AuthenticationBloc(
              userRepository: userRepository,
              sharedPreferences: sharedPreferences
          )..dispatch(AppStarted()),
          child: App(userRepository: userRepository)
      )
    );

  }, onError: (error, stackTrace) async {
    await FlutterCrashlytics().reportCrash(error, stackTrace, forceCrash: false);
  });

}