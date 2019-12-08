import 'package:equatable/equatable.dart';

abstract class MissionActEvent extends Equatable {
  MissionActEvent([List props = const []]) : super(props);
}

class SubmitCollectPicture extends MissionActEvent {
  final int missionId;
  final List<String> images;

  SubmitCollectPicture(this.missionId, this.images);
}

class SubmitCollectSurvey extends MissionActEvent {
  final int missionId;

  SubmitCollectSurvey(this.missionId);
}

class SubmitCollectSound extends MissionActEvent {
  final int missionId;

  SubmitCollectSound(this.missionId);
}

class FetchProcessPicture extends MissionActEvent {
  final int missionId;

  FetchProcessPicture(this.missionId);
}


