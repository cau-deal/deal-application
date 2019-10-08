import 'package:deal/src/blocs/auth/bloc.dart';
import 'package:deal/src/blocs/login/bloc.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:deal/generated/i18n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_lottie/flutter_lottie.dart';
import 'package:deal/src/custom/widgets/tall_height_app_bar_container.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LoginGooglePage extends StatefulWidget {

  final UserRepository _userRepository;

  LoginGooglePage({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  LoginGooglePageState createState() => LoginGooglePageState();
}


class LoginGooglePageState extends State<LoginGooglePage> {

  LoginBloc _loginBloc;
  UserRepository get _userRepository => widget._userRepository;

  @override
  void initState() {
    super.initState();
    _loginBloc =  BlocProvider.of<LoginBloc>(context);

    new Future.delayed(Duration.zero, (){
      _loginBloc.dispatch(LoginWithGooglePressed());
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext ctx) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (ctx, state){
        if (state.isFailure) {
          Fluttertoast.showToast(msg: "로그인에 실패했습니다.");
          Navigator.pop(ctx);
        }
        if (state.isSuccess) {
          BlocProvider.of<AuthenticationBloc>(ctx).dispatch(LoggedIn());
          Navigator.pop(ctx);
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (ctx, state){
          return TallHeightAppBarContainer(
              icon: Icons.close,
              iconSize: 22.0,
              text: S.of(ctx).title_login_with_google,
              child: Container(
                  padding: EdgeInsets.only(left: 42, right: 42),
                  child: Container(
                      color: Colors.white,
                      width: 100,
                      height: 100,
                      child: LottieView.fromFile(
                        filePath: 'res/lottie/google-loading.json',
                        autoPlay: true,
                        loop: true,
                        reverse: false,
                      )
                  )
              )
          );
        }
      )

    );
  }
}