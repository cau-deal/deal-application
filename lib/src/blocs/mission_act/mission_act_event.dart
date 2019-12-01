import 'package:equatable/equatable.dart';

abstract class MissionActEvent extends Equatable {
  MissionActEvent([List props = const []]) : super(props);
}

class SubmitCollectPicture extends MissionActEvent {
  final int missionId;
  final List<String> images;

  SubmitCollectPicture(this.missionId, this.images);
}

class FetchProcessPicture extends MissionActEvent {
  final int missionId;

  FetchProcessPicture(this.missionId);
}

