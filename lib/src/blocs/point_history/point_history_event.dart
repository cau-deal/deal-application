import 'package:equatable/equatable.dart';

abstract class PointHistoryEvent extends Equatable {
  PointHistoryEvent([List props = const []]) : super(props);
}

class Fetch extends PointHistoryEvent {}
