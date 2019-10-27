import 'dart:async';

import 'package:deal/src/blocs/verified/bloc.dart';
import 'package:deal/src/repositories/deal_repository.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/services/auth_service.dart';
import 'package:deal/src/services/deal_service.dart';
import 'package:deal/src/services/mission_service.dart';
import 'package:deal/src/services/user_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_crashlytics/flutter_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stetho/flutter_stetho.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:preferences/preferences.dart';

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

  if(isInDebugMode) {
    Stetho.initialize();
  }

  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, //top bar color
        statusBarIconBrightness: Brightness.light, //top bar icons
      )
  );
  await FlutterCrashlytics().initialize();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runZoned<Future<Null>>(() async {

    final UserRepository userRepository = UserRepository(
      authService: await AuthService.init(),
      userService: await UserService.init()
    );
    final DealRepository dealRepository = DealRepository(
      dealService: await DealService.init()
    );
    final MissionRepository missionRepository = MissionRepository(
      missionService: await MissionService.init()
    );

    final VerificationBloc verificationBloc = VerificationBloc(
      userRepository: userRepository
    );

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await PrefService.init(prefix: 'pref_');

    runApp(
      MultiRepositoryProvider(
        providers:[
          RepositoryProvider<UserRepository>(
            builder: (context) => userRepository,
          ),
          RepositoryProvider<DealRepository>(
            builder: (context) => dealRepository,
          ),
          RepositoryProvider<MissionRepository>(
            builder: (context) => missionRepository,
          ),
        ],

        child: MultiBlocProvider(
            providers: [
              BlocProvider<AuthenticationBloc>(builder: (ctx) => AuthenticationBloc(
                  userRepository: userRepository,
                verificationBloc: verificationBloc
              )..add(AuthInitialized())),
              BlocProvider<VerificationBloc>(builder: (ctx) => verificationBloc)
            ],
            child: App(userRepository: userRepository)
        )
      )
    );

  }, onError: (error, stackTrace) async {
    print(error);
    print(stackTrace);
    await FlutterCrashlytics().reportCrash(error, stackTrace, forceCrash: false);
  });

}