import 'package:equatable/equatable.dart';

abstract class MessageHistoryEvent extends Equatable {
  MessageHistoryEvent([List props = const []]) : super(props);
}

class Fetch extends MessageHistoryEvent {}
