import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:equatable/equatable.dart';

abstract class ConductMissionHistoryState extends Equatable {
  ConductMissionHistoryState();

  @override
  List<Object> get props => [];
}

class HistoryUninitialized extends ConductMissionHistoryState {
  final List<ConductMissionProto> histories;
  HistoryUninitialized({this.histories});
}

class HistoryError extends ConductMissionHistoryState {}

class HistoryLoaded extends ConductMissionHistoryState {
  final List<ConductMissionProto> histories;
  final bool hasReachedMax;

  HistoryLoaded({this.histories, this.hasReachedMax});

  HistoryLoaded copyWith({
    List<ConductMissionProto> histories,
    bool hasReachedMax,
  }) {
    return HistoryLoaded(
      histories: histories ?? this.histories,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [histories, hasReachedMax];

  @override
  String toString() => 'PostLoaded { posts: ${histories.length}, hasReachedMax: $hasReachedMax }';
}
