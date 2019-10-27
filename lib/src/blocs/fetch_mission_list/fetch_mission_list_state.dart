import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:equatable/equatable.dart';

abstract class FetchMissionState extends Equatable {

  FetchMissionState();

  @override
  List<Object> get props => [];
}

class FetchMissionEmpty extends FetchMissionState {
  final List<MissionProto> fetchedList;
  FetchMissionEmpty({this.fetchedList});
}

class FetchMissionUninitialized extends FetchMissionState {
  final List<MissionProto> fetchedList;
  FetchMissionUninitialized({this.fetchedList});
}

class FetchMissionError extends FetchMissionState {}

class FetchMissionLoaded extends FetchMissionState {
  final List<MissionProto> fetchedList;
  final bool hasReachedMax;

  FetchMissionLoaded({this.fetchedList, this.hasReachedMax});

  FetchMissionLoaded copyWith({
    List<MissionProto> fetchedList,
    bool hasReachedMax,
  }) {
    return FetchMissionLoaded(
      fetchedList: fetchedList ?? this.fetchedList,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [fetchedList, hasReachedMax];

  @override
  String toString() => 'PostLoaded { posts: ${fetchedList.length}, hasReachedMax: $hasReachedMax }';
}
