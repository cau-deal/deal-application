import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class MyPageEvent extends Equatable {
  MyPageEvent([List props = const []]) : super(props);
}

class MissionClicked extends MyPageEvent {

  @override
  String toString() => 'EmailChanged { email }';
}

class PointClicked extends MyPageEvent {

  @override
  String toString() => 'PasswordChanged { password: }';
}

class MessageClicked extends MyPageEvent {

  @override
  String toString() => 'PasswordChanged { password: }';
}

