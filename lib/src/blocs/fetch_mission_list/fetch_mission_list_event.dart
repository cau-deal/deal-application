import 'package:equatable/equatable.dart';

abstract class FetchMissionEvent extends Equatable {
  FetchMissionEvent([List props = const []]) : super(props);
}

class AttachStaticMission extends FetchMissionEvent {
  final String title;
  final String summary;
  final String thumbnailUri;

  final bool skip;

  AttachStaticMission({this.title, this.summary, this.thumbnailUri, this.skip});

  @override
  String toString() => 'ContentChanged { contents: $title }';
}

class Fetch extends FetchMissionEvent {}

class Clear extends FetchMissionEvent {}
