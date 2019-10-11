import 'dart:async';
import 'package:bloc/bloc.dart';

import 'bloc.dart';

class MyPageBloc extends Bloc<MyPageEvent, MyPageState> {

//  final UserRepository _userRepository;
//
//  MyPageBloc({
//    @required UserRepository userRepository,
//  })  : assert(userRepository != null),
//        _userRepository = userRepository;

  @override
  MyPageState get initialState => MyPageState.mission();

  @override
  Stream<MyPageState> mapEventToState(MyPageEvent event) async* {
    if (event is MissionClicked) {
      yield* _mapMissionClickedToState();
    } else if (event is PointClicked) {
      yield* _mapPointClickedToState();
    } else if (event is MessageClicked){
      yield* _mapMessageClickedToState();
    }
  }

  Stream<MyPageState> _mapMissionClickedToState() async* {
    yield currentState.update(
      isPointSection: false, isMissionSection: true, isMessageSection: false
    );
  }

  Stream<MyPageState> _mapPointClickedToState() async* {
    yield currentState.update(
        isPointSection: true, isMissionSection: false, isMessageSection: false
    );
  }

  Stream<MyPageState> _mapMessageClickedToState() async* {
    yield currentState.update(
        isPointSection: false, isMissionSection: false, isMessageSection: true
    );
  }

}