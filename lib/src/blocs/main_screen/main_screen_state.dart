import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:meta/meta.dart';

@immutable
class MainScreenState {

  final List<MissionRecommendImage> recommendation;
  final List<MissionProto> collect;
  final List<MissionProto> process;

  final bool isSuccess;
  final bool isFailure;

  MainScreenState({
    @required this.recommendation,
    @required this.collect,
    @required this.process,

    @required this.isSuccess,
    @required this.isFailure,
  });

  factory MainScreenState.empty() {
    return MainScreenState(
      recommendation: [],
      collect: [],
      process: [],
      isSuccess: false,
      isFailure: false,
    );
  }

  factory MainScreenState.loading() {
    return MainScreenState(
      recommendation: [],
      collect: [],
      process: [],
      isSuccess: false,
      isFailure: false,
    );
  }

  factory MainScreenState.failure() {
    return MainScreenState(
      recommendation: [],
      collect: [],
      process: [],
      isSuccess: false,
      isFailure: true,
    );
  }

  factory MainScreenState.success(
      List<MissionRecommendImage> recommendation,
      List<MissionProto> collect,
      List<MissionProto> process
      ) {
    return MainScreenState(
      recommendation: recommendation,
      collect: collect,
      process: process,

      isSuccess: true,
      isFailure: false,
    );
  }

  MainScreenState update({
    List<MissionRecommendImage> recommendation,
    List<MissionProto> collect,
    List<MissionProto> process
  }) {
    return copyWith(
      recommendation: recommendation,
      collect: collect,
      process: process,
      isSuccess: false,
      isFailure: false,
    );
  }

  MainScreenState copyWith({
    List<MissionRecommendImage> recommendation,
    List<MissionProto> collect,
    List<MissionProto> process,
    bool isSuccess,
    bool isFailure
  }) {
    return MainScreenState(
      recommendation: recommendation ?? this.recommendation,
      collect: collect ?? this.collect,
      process: process ?? this.process,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
    );
  }

  @override
  String toString() {
    return '''MissionActState {
      isSuccess : $isSuccess,
      isFailure : $isFailure,
    }''';
  }
}
