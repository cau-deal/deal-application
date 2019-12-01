import 'package:equatable/equatable.dart';

abstract class MessageHistoryEvent extends Equatable {
  MessageHistoryEvent([List props = const []]) : super(props);
}

class UnRead extends MessageHistoryEvent {}

class Read extends MessageHistoryEvent {}

class All extends MessageHistoryEvent {}

