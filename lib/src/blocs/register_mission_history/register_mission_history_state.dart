import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:equatable/equatable.dart';

abstract class RegisterMissionHistoryState extends Equatable {
  RegisterMissionHistoryState();

  @override
  List<Object> get props => [];
}

class HistoryUninitialized extends RegisterMissionHistoryState {
  final List<MissionProto> histories;
  HistoryUninitialized({this.histories});
}

class HistoryError extends RegisterMissionHistoryState {}

class HistoryLoaded extends RegisterMissionHistoryState {
  final List<MissionProto> histories;
  final bool hasReachedMax;

  HistoryLoaded({this.histories, this.hasReachedMax});

  HistoryLoaded copyWith({
    List<MissionProto> histories,
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
