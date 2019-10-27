import 'package:equatable/equatable.dart';

abstract class ConductMissionHistoryEvent extends Equatable {
  ConductMissionHistoryEvent([List props = const []]) : super(props);
}

class Fetch extends ConductMissionHistoryEvent {}
