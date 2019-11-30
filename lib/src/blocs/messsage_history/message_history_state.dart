import 'package:deal/src/protos/NotificationService.pb.dart';
import 'package:equatable/equatable.dart';

abstract class MessageHistoryState extends Equatable {
  MessageHistoryState();

  @override
  List<Object> get props => [];
}

class MessageHistoryUninitialized extends MessageHistoryState {
  final List<Push> histories;
  MessageHistoryUninitialized({this.histories});
}

class MessageHistoryError extends MessageHistoryState {}

class MessageHistoryLoaded extends MessageHistoryState {
  final List<Push> histories;
  final bool hasReachedMax;

  MessageHistoryLoaded({this.histories, this.hasReachedMax});

  MessageHistoryLoaded copyWith({
    List<Push> histories,
    bool hasReachedMax,
  }) {
    return MessageHistoryLoaded(
      histories: histories ?? this.histories,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [histories, hasReachedMax];

  @override
  String toString() => 'PostLoaded { posts: ${histories.length}, hasReachedMax: $hasReachedMax }';
}
