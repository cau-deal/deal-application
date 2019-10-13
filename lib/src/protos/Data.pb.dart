///
//  Generated code. Do not modify.
//  source: Data.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Data.pbenum.dart';

export 'Data.pbenum.dart';

class Data extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Data', createEmptyInstance: create)
    ..aOS(1, 'url')
    ..a<$core.int>(2, 'missionId', $pb.PbFieldType.O3)
    ..e<DataState>(3, 'state', $pb.PbFieldType.OE, defaultOrMaker: DataState.UNKNOWN_DATA_STATE, valueOf: DataState.valueOf, enumValues: DataState.values)
    ..hasRequiredFields = false
  ;

  Data._() : super();
  factory Data() => create();
  factory Data.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Data.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Data clone() => Data()..mergeFromMessage(this);
  Data copyWith(void Function(Data) updates) => super.copyWith((message) => updates(message as Data));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Data create() => Data._();
  Data createEmptyInstance() => create();
  static $pb.PbList<Data> createRepeated() => $pb.PbList<Data>();
  @$core.pragma('dart2js:noInline')
  static Data getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Data>(create);
  static Data _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get missionId => $_getIZ(1);
  @$pb.TagNumber(2)
  set missionId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMissionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissionId() => clearField(2);

  @$pb.TagNumber(3)
  DataState get state => $_getN(2);
  @$pb.TagNumber(3)
  set state(DataState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);
}

class ProcessedImageData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProcessedImageData', createEmptyInstance: create)
    ..aOM<Data>(1, 'data', subBuilder: Data.create)
    ..aOS(2, 'labelingResult')
    ..hasRequiredFields = false
  ;

  ProcessedImageData._() : super();
  factory ProcessedImageData() => create();
  factory ProcessedImageData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProcessedImageData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ProcessedImageData clone() => ProcessedImageData()..mergeFromMessage(this);
  ProcessedImageData copyWith(void Function(ProcessedImageData) updates) => super.copyWith((message) => updates(message as ProcessedImageData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProcessedImageData create() => ProcessedImageData._();
  ProcessedImageData createEmptyInstance() => create();
  static $pb.PbList<ProcessedImageData> createRepeated() => $pb.PbList<ProcessedImageData>();
  @$core.pragma('dart2js:noInline')
  static ProcessedImageData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProcessedImageData>(create);
  static ProcessedImageData _defaultInstance;

  @$pb.TagNumber(1)
  Data get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(Data v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  Data ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get labelingResult => $_getSZ(1);
  @$pb.TagNumber(2)
  set labelingResult($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabelingResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabelingResult() => clearField(2);
}

class MissionExplanationImage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MissionExplanationImage', createEmptyInstance: create)
    ..aOS(1, 'url')
    ..a<$core.int>(2, 'missionId', $pb.PbFieldType.O3)
    ..e<MissionExplanationImageType>(3, 'type', $pb.PbFieldType.OE, defaultOrMaker: MissionExplanationImageType.UNKNOWN_MISSION_EXPLANATION_IMAGE_TYPE, valueOf: MissionExplanationImageType.valueOf, enumValues: MissionExplanationImageType.values)
    ..hasRequiredFields = false
  ;

  MissionExplanationImage._() : super();
  factory MissionExplanationImage() => create();
  factory MissionExplanationImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MissionExplanationImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MissionExplanationImage clone() => MissionExplanationImage()..mergeFromMessage(this);
  MissionExplanationImage copyWith(void Function(MissionExplanationImage) updates) => super.copyWith((message) => updates(message as MissionExplanationImage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MissionExplanationImage create() => MissionExplanationImage._();
  MissionExplanationImage createEmptyInstance() => create();
  static $pb.PbList<MissionExplanationImage> createRepeated() => $pb.PbList<MissionExplanationImage>();
  @$core.pragma('dart2js:noInline')
  static MissionExplanationImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MissionExplanationImage>(create);
  static MissionExplanationImage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get missionId => $_getIZ(1);
  @$pb.TagNumber(2)
  set missionId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMissionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissionId() => clearField(2);

  @$pb.TagNumber(3)
  MissionExplanationImageType get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(MissionExplanationImageType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

