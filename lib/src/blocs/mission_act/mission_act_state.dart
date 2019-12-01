import 'package:meta/meta.dart';

@immutable
class MissionActState {

  final List<String> images;
  final List<String> labels;

  final bool isSuccess;
  final bool isFailure;

  MissionActState({
    @required this.images,
    @required this.labels,
    @required this.isSuccess,
    @required this.isFailure,
  });

  factory MissionActState.empty() {
    return MissionActState(
      images: [],
      labels: [],
      isSuccess: false,
      isFailure: false,
    );
  }

  factory MissionActState.loading() {
    return MissionActState(
      images: [],
      labels: [],
      isSuccess: false,
      isFailure: false,
    );
  }

  factory MissionActState.failure() {
    return MissionActState(
      images: [],
      labels: [],
      isSuccess: false,
      isFailure: true,
    );
  }

  factory MissionActState.success(List<String> images, List<String> labels) {
    return MissionActState(
      images: images,
      labels: labels,
      isSuccess: true,
      isFailure: false,
    );
  }

  MissionActState update({
    List<String> images,
    List<String> labels,
  }) {
    return copyWith(
      images: images,
      labels: labels,
      isSuccess: false,
      isFailure: false,
    );
  }

  MissionActState copyWith({
    List<String> images,
    List<String> labels,
    bool isSuccess,
    bool isFailure
  }) {
    return MissionActState(
      images: images ?? this.images,
      labels: labels ?? this.labels,
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
