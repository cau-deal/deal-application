import 'package:deal/src/protos/PointService.pb.dart';
import 'package:equatable/equatable.dart';

abstract class PointHistoryState extends Equatable {
  PointHistoryState();

  @override
  List<Object> get props => [];
}

class PointHistoryUninitialized extends PointHistoryState {
  final List<PointHistory> histories;
  PointHistoryUninitialized({this.histories});
}

class PointHistoryError extends PointHistoryState {}

class PointHistoryLoaded extends PointHistoryState {
  final List<PointHistory> histories;
  final bool hasReachedMax;

  PointHistoryLoaded({this.histories, this.hasReachedMax});

  PointHistoryLoaded copyWith({
    List<PointHistory> histories,
    bool hasReachedMax,
  }) {
    return PointHistoryLoaded(
      histories: histories ?? this.histories,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [histories, hasReachedMax];

  @override
  String toString() => 'PostLoaded { posts: ${histories.length}, hasReachedMax: $hasReachedMax }';
}
