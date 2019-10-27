import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class MyPageEvent extends Equatable {
  MyPageEvent([List props = const []]) : super(props);
}

class MyPageInitialized extends MyPageEvent {
  @override
  String toString() => 'EmailChanged { email }';
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
