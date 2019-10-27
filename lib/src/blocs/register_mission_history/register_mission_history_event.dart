import 'package:equatable/equatable.dart';

abstract class RegisterMissionHistoryEvent extends Equatable {
  RegisterMissionHistoryEvent([List props = const []]) : super(props);
}

class Fetch extends RegisterMissionHistoryEvent {}
