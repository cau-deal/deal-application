import 'dart:io';

import 'package:deal/src/protos/Data.pbenum.dart';
import 'package:deal/src/protos/MissionService.pbenum.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class MissionCreateEvent extends Equatable {
  MissionCreateEvent([List props = const []]) : super(props);
}

class TitleChanged extends MissionCreateEvent {
  final String title;

  TitleChanged({@required this.title}) : super([title]);

  @override
  String toString() => 'TitleChanged { title :$title }';
}

class SubTitleChanged extends MissionCreateEvent {
  final String subtitle;

  SubTitleChanged({@required this.subtitle}) : super([subtitle]);

  @override
  String toString() => 'subtitle : $subtitle';
}

class DatePeriodChanged extends MissionCreateEvent {
  final DateTime start;
  final DateTime end;

  DatePeriodChanged({this.start, this.end}) : super([start, end]);

  @override
  String toString() => 'subtitle : $start ~ $end';
}

class PointChanged extends MissionCreateEvent {
  final int point;

  PointChanged({@required this.point}) : super([point]);

  @override
  String toString() => 'subtitle : $point';
}

class UnitChanged extends MissionCreateEvent {
  final int unit;

  UnitChanged({@required this.unit}) : super([unit]);

  @override
  String toString() => 'subtitle : $unit';
}

class TotalCountChanged extends MissionCreateEvent {
  final int totalCnt;

  TotalCountChanged({@required this.totalCnt}) : super([totalCnt]);

  @override
  String toString() => 'subtitle : $totalCnt';
}

class MissionTypeChanged extends MissionCreateEvent {
  final MissionType missionType;

  MissionTypeChanged({@required this.missionType}) : super([missionType]);

  @override
  String toString() => 'subtitle : $missionType';
}

class DataTypeChanged extends MissionCreateEvent {
  final DataType dataType;

  DataTypeChanged({@required this.dataType}) : super([dataType]);

  @override
  String toString() => 'subtitle : $dataType';
}

class MissionSummaryChanged extends MissionCreateEvent {
  final String summary;

  MissionSummaryChanged(this.summary);

  @override
  String toString() => 'subtitle';
}

class MissionInstructionChanged extends MissionCreateEvent {
  final String inst;

  MissionInstructionChanged(this.inst);

  @override
  String toString() => 'subtitle';
}

class MissionTermsChanged extends MissionCreateEvent {
  final String terms;

  MissionTermsChanged(this.terms);

  @override
  String toString() => 'subtitle ';
}

class AgreementChanged extends MissionCreateEvent {
  final bool agreeWithTerms;

  AgreementChanged({@required this.agreeWithTerms}) : super([agreeWithTerms]);

  @override
  String toString() => 'subtitle : $agreeWithTerms';
}

class MissionThumbnailChanged extends MissionCreateEvent {
  final File asset;

  MissionThumbnailChanged({@required this.asset}) : super([asset]);

  @override
  String toString() => 'subtitle : $asset';
}

class SubmitPressed extends MissionCreateEvent {
  final String title;
  final String subtitle;
  final int point;
  final int unit;
  final int totalCnt;
  final DateTime start;
  final DateTime end;
  final MissionType missionType;
  final DataType dataType;
  final String summary;
  final String instruction;
  final String terms;
  final String thumbnailUri;

  SubmitPressed(
      {this.title,
      this.subtitle,
      this.point,
      this.unit,
      this.totalCnt,
      this.start,
      this.end,
      this.missionType,
      this.dataType,
      this.summary,
      this.instruction,
      this.terms,
      this.thumbnailUri});

  @override
  String toString() {
    return 'Submit Pressed!';
  }
}
