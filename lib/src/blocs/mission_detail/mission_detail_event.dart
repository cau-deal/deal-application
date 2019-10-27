import 'package:equatable/equatable.dart';

abstract class MissionDetailEvent extends Equatable {
  MissionDetailEvent([List props = const []]) : super(props);
}

class Fetch extends MissionDetailEvent {
  final int missionId;

  Fetch(this.missionId);
}

class ButtonPressed extends MissionDetailEvent {
  final int missionId;

  ButtonPressed(this.missionId);
}

