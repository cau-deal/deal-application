///
//  Generated code. Do not modify.
//  source: MissionService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Data.pb.dart' as $1;
import 'Datetime.pb.dart' as $2;
import 'CommonResult.pb.dart' as $3;

import 'MissionService.pbenum.dart';
import 'Data.pbenum.dart' as $1;

export 'MissionService.pbenum.dart';

class RegistMissionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegistMissionRequest', createEmptyInstance: create)
    ..aOM<Mission>(1, 'mission', subBuilder: Mission.create)
    ..hasRequiredFields = false
  ;

  RegistMissionRequest._() : super();
  factory RegistMissionRequest() => create();
  factory RegistMissionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegistMissionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegistMissionRequest clone() => RegistMissionRequest()..mergeFromMessage(this);
  RegistMissionRequest copyWith(void Function(RegistMissionRequest) updates) => super.copyWith((message) => updates(message as RegistMissionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegistMissionRequest create() => RegistMissionRequest._();
  RegistMissionRequest createEmptyInstance() => create();
  static $pb.PbList<RegistMissionRequest> createRepeated() => $pb.PbList<RegistMissionRequest>();
  @$core.pragma('dart2js:noInline')
  static RegistMissionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegistMissionRequest>(create);
  static RegistMissionRequest _defaultInstance;

  @$pb.TagNumber(1)
  Mission get mission => $_getN(0);
  @$pb.TagNumber(1)
  set mission(Mission v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMission() => $_has(0);
  @$pb.TagNumber(1)
  void clearMission() => clearField(1);
  @$pb.TagNumber(1)
  Mission ensureMission() => $_ensure(0);
}

class SearchMissionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchMissionRequest', createEmptyInstance: create)
    ..e<MissionType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: MissionType.UNKNOWN_MISSION_TYPE, valueOf: MissionType.valueOf, enumValues: MissionType.values)
    ..aOS(2, 'keyworkd')
    ..aOM<MissionPage>(3, 'missionPage', subBuilder: MissionPage.create)
    ..hasRequiredFields = false
  ;

  SearchMissionRequest._() : super();
  factory SearchMissionRequest() => create();
  factory SearchMissionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchMissionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchMissionRequest clone() => SearchMissionRequest()..mergeFromMessage(this);
  SearchMissionRequest copyWith(void Function(SearchMissionRequest) updates) => super.copyWith((message) => updates(message as SearchMissionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchMissionRequest create() => SearchMissionRequest._();
  SearchMissionRequest createEmptyInstance() => create();
  static $pb.PbList<SearchMissionRequest> createRepeated() => $pb.PbList<SearchMissionRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchMissionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchMissionRequest>(create);
  static SearchMissionRequest _defaultInstance;

  @$pb.TagNumber(1)
  MissionType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(MissionType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get keyworkd => $_getSZ(1);
  @$pb.TagNumber(2)
  set keyworkd($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeyworkd() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyworkd() => clearField(2);

  @$pb.TagNumber(3)
  MissionPage get missionPage => $_getN(2);
  @$pb.TagNumber(3)
  set missionPage(MissionPage v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMissionPage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMissionPage() => clearField(3);
  @$pb.TagNumber(3)
  MissionPage ensureMissionPage() => $_ensure(2);
}

class MissionIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MissionIdRequest', createEmptyInstance: create)
    ..a<$core.int>(1, 'missionId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  MissionIdRequest._() : super();
  factory MissionIdRequest() => create();
  factory MissionIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MissionIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MissionIdRequest clone() => MissionIdRequest()..mergeFromMessage(this);
  MissionIdRequest copyWith(void Function(MissionIdRequest) updates) => super.copyWith((message) => updates(message as MissionIdRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MissionIdRequest create() => MissionIdRequest._();
  MissionIdRequest createEmptyInstance() => create();
  static $pb.PbList<MissionIdRequest> createRepeated() => $pb.PbList<MissionIdRequest>();
  @$core.pragma('dart2js:noInline')
  static MissionIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MissionIdRequest>(create);
  static MissionIdRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get missionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set missionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMissionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMissionId() => clearField(1);
}

class SearchMissionReleventMeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchMissionReleventMeRequest', createEmptyInstance: create)
    ..e<RelevantType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: RelevantType.UNKNOWN_RELEVANT_TYPE, valueOf: RelevantType.valueOf, enumValues: RelevantType.values)
    ..aOM<MissionPage>(2, 'missionPage', subBuilder: MissionPage.create)
    ..hasRequiredFields = false
  ;

  SearchMissionReleventMeRequest._() : super();
  factory SearchMissionReleventMeRequest() => create();
  factory SearchMissionReleventMeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchMissionReleventMeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchMissionReleventMeRequest clone() => SearchMissionReleventMeRequest()..mergeFromMessage(this);
  SearchMissionReleventMeRequest copyWith(void Function(SearchMissionReleventMeRequest) updates) => super.copyWith((message) => updates(message as SearchMissionReleventMeRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchMissionReleventMeRequest create() => SearchMissionReleventMeRequest._();
  SearchMissionReleventMeRequest createEmptyInstance() => create();
  static $pb.PbList<SearchMissionReleventMeRequest> createRepeated() => $pb.PbList<SearchMissionReleventMeRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchMissionReleventMeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchMissionReleventMeRequest>(create);
  static SearchMissionReleventMeRequest _defaultInstance;

  @$pb.TagNumber(1)
  RelevantType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(RelevantType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  MissionPage get missionPage => $_getN(1);
  @$pb.TagNumber(2)
  set missionPage(MissionPage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMissionPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissionPage() => clearField(2);
  @$pb.TagNumber(2)
  MissionPage ensureMissionPage() => $_ensure(1);
}

class SubmitCollectMissionOutputRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubmitCollectMissionOutputRequest', createEmptyInstance: create)
    ..a<$core.int>(1, 'missionId', $pb.PbFieldType.O3)
    ..pc<$1.Data>(2, 'datas', $pb.PbFieldType.PM, subBuilder: $1.Data.create)
    ..hasRequiredFields = false
  ;

  SubmitCollectMissionOutputRequest._() : super();
  factory SubmitCollectMissionOutputRequest() => create();
  factory SubmitCollectMissionOutputRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitCollectMissionOutputRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SubmitCollectMissionOutputRequest clone() => SubmitCollectMissionOutputRequest()..mergeFromMessage(this);
  SubmitCollectMissionOutputRequest copyWith(void Function(SubmitCollectMissionOutputRequest) updates) => super.copyWith((message) => updates(message as SubmitCollectMissionOutputRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitCollectMissionOutputRequest create() => SubmitCollectMissionOutputRequest._();
  SubmitCollectMissionOutputRequest createEmptyInstance() => create();
  static $pb.PbList<SubmitCollectMissionOutputRequest> createRepeated() => $pb.PbList<SubmitCollectMissionOutputRequest>();
  @$core.pragma('dart2js:noInline')
  static SubmitCollectMissionOutputRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitCollectMissionOutputRequest>(create);
  static SubmitCollectMissionOutputRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get missionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set missionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMissionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMissionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$1.Data> get datas => $_getList(1);
}

class SubmitProcessMissionOutputRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubmitProcessMissionOutputRequest', createEmptyInstance: create)
    ..a<$core.int>(1, 'missionId', $pb.PbFieldType.O3)
    ..pc<$1.ProcessedImageData>(2, 'datas', $pb.PbFieldType.PM, subBuilder: $1.ProcessedImageData.create)
    ..hasRequiredFields = false
  ;

  SubmitProcessMissionOutputRequest._() : super();
  factory SubmitProcessMissionOutputRequest() => create();
  factory SubmitProcessMissionOutputRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitProcessMissionOutputRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SubmitProcessMissionOutputRequest clone() => SubmitProcessMissionOutputRequest()..mergeFromMessage(this);
  SubmitProcessMissionOutputRequest copyWith(void Function(SubmitProcessMissionOutputRequest) updates) => super.copyWith((message) => updates(message as SubmitProcessMissionOutputRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitProcessMissionOutputRequest create() => SubmitProcessMissionOutputRequest._();
  SubmitProcessMissionOutputRequest createEmptyInstance() => create();
  static $pb.PbList<SubmitProcessMissionOutputRequest> createRepeated() => $pb.PbList<SubmitProcessMissionOutputRequest>();
  @$core.pragma('dart2js:noInline')
  static SubmitProcessMissionOutputRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitProcessMissionOutputRequest>(create);
  static SubmitProcessMissionOutputRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get missionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set missionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMissionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMissionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$1.ProcessedImageData> get datas => $_getList(1);
}

class Mission extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Mission', createEmptyInstance: create)
    ..a<$core.int>(1, 'missionId', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..aOS(3, 'contents')
    ..e<MissionType>(4, 'missionType', $pb.PbFieldType.OE, defaultOrMaker: MissionType.UNKNOWN_MISSION_TYPE, valueOf: MissionType.valueOf, enumValues: MissionType.values)
    ..e<$1.DataType>(5, 'dataType', $pb.PbFieldType.OE, defaultOrMaker: $1.DataType.UNKNOWN_DATA_TYPE, valueOf: $1.DataType.valueOf, enumValues: $1.DataType.values)
    ..a<$core.int>(6, 'unitPackage', $pb.PbFieldType.O3)
    ..a<$core.int>(7, 'priceOfPackge', $pb.PbFieldType.O3)
    ..aOM<$2.Datetime>(8, 'deadline', subBuilder: $2.Datetime.create)
    ..a<$core.int>(9, 'orderPackageQuantity', $pb.PbFieldType.O3)
    ..aOS(10, 'summary')
    ..aOS(11, 'contactClause')
    ..aOS(12, 'specification')
    ..pc<$1.MissionExplanationImage>(13, 'missionExplanationImages', $pb.PbFieldType.PM, subBuilder: $1.MissionExplanationImage.create)
    ..aOM<$2.Datetime>(14, 'createdAt', subBuilder: $2.Datetime.create)
    ..hasRequiredFields = false
  ;

  Mission._() : super();
  factory Mission() => create();
  factory Mission.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Mission.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Mission clone() => Mission()..mergeFromMessage(this);
  Mission copyWith(void Function(Mission) updates) => super.copyWith((message) => updates(message as Mission));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Mission create() => Mission._();
  Mission createEmptyInstance() => create();
  static $pb.PbList<Mission> createRepeated() => $pb.PbList<Mission>();
  @$core.pragma('dart2js:noInline')
  static Mission getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mission>(create);
  static Mission _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get missionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set missionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMissionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMissionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get contents => $_getSZ(2);
  @$pb.TagNumber(3)
  set contents($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContents() => $_has(2);
  @$pb.TagNumber(3)
  void clearContents() => clearField(3);

  @$pb.TagNumber(4)
  MissionType get missionType => $_getN(3);
  @$pb.TagNumber(4)
  set missionType(MissionType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMissionType() => $_has(3);
  @$pb.TagNumber(4)
  void clearMissionType() => clearField(4);

  @$pb.TagNumber(5)
  $1.DataType get dataType => $_getN(4);
  @$pb.TagNumber(5)
  set dataType($1.DataType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDataType() => $_has(4);
  @$pb.TagNumber(5)
  void clearDataType() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get unitPackage => $_getIZ(5);
  @$pb.TagNumber(6)
  set unitPackage($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUnitPackage() => $_has(5);
  @$pb.TagNumber(6)
  void clearUnitPackage() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get priceOfPackge => $_getIZ(6);
  @$pb.TagNumber(7)
  set priceOfPackge($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPriceOfPackge() => $_has(6);
  @$pb.TagNumber(7)
  void clearPriceOfPackge() => clearField(7);

  @$pb.TagNumber(8)
  $2.Datetime get deadline => $_getN(7);
  @$pb.TagNumber(8)
  set deadline($2.Datetime v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDeadline() => $_has(7);
  @$pb.TagNumber(8)
  void clearDeadline() => clearField(8);
  @$pb.TagNumber(8)
  $2.Datetime ensureDeadline() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.int get orderPackageQuantity => $_getIZ(8);
  @$pb.TagNumber(9)
  set orderPackageQuantity($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasOrderPackageQuantity() => $_has(8);
  @$pb.TagNumber(9)
  void clearOrderPackageQuantity() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get summary => $_getSZ(9);
  @$pb.TagNumber(10)
  set summary($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSummary() => $_has(9);
  @$pb.TagNumber(10)
  void clearSummary() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get contactClause => $_getSZ(10);
  @$pb.TagNumber(11)
  set contactClause($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasContactClause() => $_has(10);
  @$pb.TagNumber(11)
  void clearContactClause() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get specification => $_getSZ(11);
  @$pb.TagNumber(12)
  set specification($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSpecification() => $_has(11);
  @$pb.TagNumber(12)
  void clearSpecification() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$1.MissionExplanationImage> get missionExplanationImages => $_getList(12);

  @$pb.TagNumber(14)
  $2.Datetime get createdAt => $_getN(13);
  @$pb.TagNumber(14)
  set createdAt($2.Datetime v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasCreatedAt() => $_has(13);
  @$pb.TagNumber(14)
  void clearCreatedAt() => clearField(14);
  @$pb.TagNumber(14)
  $2.Datetime ensureCreatedAt() => $_ensure(13);
}

class MissionProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MissionProto', createEmptyInstance: create)
    ..a<$core.int>(1, 'missionId', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..e<MissionType>(4, 'type', $pb.PbFieldType.OE, defaultOrMaker: MissionType.UNKNOWN_MISSION_TYPE, valueOf: MissionType.valueOf, enumValues: MissionType.values)
    ..a<$core.int>(7, 'priceOfPackge', $pb.PbFieldType.O3)
    ..aOM<$2.Datetime>(8, 'deadline', subBuilder: $2.Datetime.create)
    ..aOS(10, 'summary')
    ..aOS(15, 'thumbnailUrl')
    ..hasRequiredFields = false
  ;

  MissionProto._() : super();
  factory MissionProto() => create();
  factory MissionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MissionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MissionProto clone() => MissionProto()..mergeFromMessage(this);
  MissionProto copyWith(void Function(MissionProto) updates) => super.copyWith((message) => updates(message as MissionProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MissionProto create() => MissionProto._();
  MissionProto createEmptyInstance() => create();
  static $pb.PbList<MissionProto> createRepeated() => $pb.PbList<MissionProto>();
  @$core.pragma('dart2js:noInline')
  static MissionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MissionProto>(create);
  static MissionProto _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get missionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set missionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMissionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMissionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(4)
  MissionType get type => $_getN(2);
  @$pb.TagNumber(4)
  set type(MissionType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(7)
  $core.int get priceOfPackge => $_getIZ(3);
  @$pb.TagNumber(7)
  set priceOfPackge($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(7)
  $core.bool hasPriceOfPackge() => $_has(3);
  @$pb.TagNumber(7)
  void clearPriceOfPackge() => clearField(7);

  @$pb.TagNumber(8)
  $2.Datetime get deadline => $_getN(4);
  @$pb.TagNumber(8)
  set deadline($2.Datetime v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDeadline() => $_has(4);
  @$pb.TagNumber(8)
  void clearDeadline() => clearField(8);
  @$pb.TagNumber(8)
  $2.Datetime ensureDeadline() => $_ensure(4);

  @$pb.TagNumber(10)
  $core.String get summary => $_getSZ(5);
  @$pb.TagNumber(10)
  set summary($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(10)
  $core.bool hasSummary() => $_has(5);
  @$pb.TagNumber(10)
  void clearSummary() => clearField(10);

  @$pb.TagNumber(15)
  $core.String get thumbnailUrl => $_getSZ(6);
  @$pb.TagNumber(15)
  set thumbnailUrl($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(15)
  $core.bool hasThumbnailUrl() => $_has(6);
  @$pb.TagNumber(15)
  void clearThumbnailUrl() => clearField(15);
}

class RegistMissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegistMissionResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..e<RegistMissionResult>(2, 'registMissionResult', $pb.PbFieldType.OE, defaultOrMaker: RegistMissionResult.UNKNOWN_REGIST_MISSION_RESULT, valueOf: RegistMissionResult.valueOf, enumValues: RegistMissionResult.values)
    ..hasRequiredFields = false
  ;

  RegistMissionResponse._() : super();
  factory RegistMissionResponse() => create();
  factory RegistMissionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegistMissionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegistMissionResponse clone() => RegistMissionResponse()..mergeFromMessage(this);
  RegistMissionResponse copyWith(void Function(RegistMissionResponse) updates) => super.copyWith((message) => updates(message as RegistMissionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegistMissionResponse create() => RegistMissionResponse._();
  RegistMissionResponse createEmptyInstance() => create();
  static $pb.PbList<RegistMissionResponse> createRepeated() => $pb.PbList<RegistMissionResponse>();
  @$core.pragma('dart2js:noInline')
  static RegistMissionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegistMissionResponse>(create);
  static RegistMissionResponse _defaultInstance;

  @$pb.TagNumber(1)
  $3.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($3.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $3.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  RegistMissionResult get registMissionResult => $_getN(1);
  @$pb.TagNumber(2)
  set registMissionResult(RegistMissionResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegistMissionResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistMissionResult() => clearField(2);
}

class SearchMissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchMissionResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..e<SearchMissionResult>(2, 'searchMissionResult', $pb.PbFieldType.OE, defaultOrMaker: SearchMissionResult.UNKNOWN_SEARCH_MISSION_RESULT, valueOf: SearchMissionResult.valueOf, enumValues: SearchMissionResult.values)
    ..pc<MissionProto>(3, 'missionPtoroes', $pb.PbFieldType.PM, subBuilder: MissionProto.create)
    ..hasRequiredFields = false
  ;

  SearchMissionResponse._() : super();
  factory SearchMissionResponse() => create();
  factory SearchMissionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchMissionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchMissionResponse clone() => SearchMissionResponse()..mergeFromMessage(this);
  SearchMissionResponse copyWith(void Function(SearchMissionResponse) updates) => super.copyWith((message) => updates(message as SearchMissionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchMissionResponse create() => SearchMissionResponse._();
  SearchMissionResponse createEmptyInstance() => create();
  static $pb.PbList<SearchMissionResponse> createRepeated() => $pb.PbList<SearchMissionResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchMissionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchMissionResponse>(create);
  static SearchMissionResponse _defaultInstance;

  @$pb.TagNumber(1)
  $3.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($3.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $3.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  SearchMissionResult get searchMissionResult => $_getN(1);
  @$pb.TagNumber(2)
  set searchMissionResult(SearchMissionResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSearchMissionResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearSearchMissionResult() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<MissionProto> get missionPtoroes => $_getList(2);
}

class SearchMissionWithIdReponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchMissionWithIdReponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..e<SearchMissionResult>(2, 'searchMissionResult', $pb.PbFieldType.OE, defaultOrMaker: SearchMissionResult.UNKNOWN_SEARCH_MISSION_RESULT, valueOf: SearchMissionResult.valueOf, enumValues: SearchMissionResult.values)
    ..aOM<Mission>(3, 'mission', subBuilder: Mission.create)
    ..hasRequiredFields = false
  ;

  SearchMissionWithIdReponse._() : super();
  factory SearchMissionWithIdReponse() => create();
  factory SearchMissionWithIdReponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchMissionWithIdReponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchMissionWithIdReponse clone() => SearchMissionWithIdReponse()..mergeFromMessage(this);
  SearchMissionWithIdReponse copyWith(void Function(SearchMissionWithIdReponse) updates) => super.copyWith((message) => updates(message as SearchMissionWithIdReponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchMissionWithIdReponse create() => SearchMissionWithIdReponse._();
  SearchMissionWithIdReponse createEmptyInstance() => create();
  static $pb.PbList<SearchMissionWithIdReponse> createRepeated() => $pb.PbList<SearchMissionWithIdReponse>();
  @$core.pragma('dart2js:noInline')
  static SearchMissionWithIdReponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchMissionWithIdReponse>(create);
  static SearchMissionWithIdReponse _defaultInstance;

  @$pb.TagNumber(1)
  $3.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($3.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $3.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  SearchMissionResult get searchMissionResult => $_getN(1);
  @$pb.TagNumber(2)
  set searchMissionResult(SearchMissionResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSearchMissionResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearSearchMissionResult() => clearField(2);

  @$pb.TagNumber(3)
  Mission get mission => $_getN(2);
  @$pb.TagNumber(3)
  set mission(Mission v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMission() => $_has(2);
  @$pb.TagNumber(3)
  void clearMission() => clearField(3);
  @$pb.TagNumber(3)
  Mission ensureMission() => $_ensure(2);
}

class SearchMissionReleventMeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchMissionReleventMeResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..e<SearchMissionResult>(2, 'searchMissionResult', $pb.PbFieldType.OE, defaultOrMaker: SearchMissionResult.UNKNOWN_SEARCH_MISSION_RESULT, valueOf: SearchMissionResult.valueOf, enumValues: SearchMissionResult.values)
    ..pc<MissionProto>(3, 'missionProtoes', $pb.PbFieldType.PM, subBuilder: MissionProto.create)
    ..pc<MissionState>(4, 'missionStates', $pb.PbFieldType.PE, valueOf: MissionState.valueOf, enumValues: MissionState.values)
    ..hasRequiredFields = false
  ;

  SearchMissionReleventMeResponse._() : super();
  factory SearchMissionReleventMeResponse() => create();
  factory SearchMissionReleventMeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchMissionReleventMeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchMissionReleventMeResponse clone() => SearchMissionReleventMeResponse()..mergeFromMessage(this);
  SearchMissionReleventMeResponse copyWith(void Function(SearchMissionReleventMeResponse) updates) => super.copyWith((message) => updates(message as SearchMissionReleventMeResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchMissionReleventMeResponse create() => SearchMissionReleventMeResponse._();
  SearchMissionReleventMeResponse createEmptyInstance() => create();
  static $pb.PbList<SearchMissionReleventMeResponse> createRepeated() => $pb.PbList<SearchMissionReleventMeResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchMissionReleventMeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchMissionReleventMeResponse>(create);
  static SearchMissionReleventMeResponse _defaultInstance;

  @$pb.TagNumber(1)
  $3.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($3.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $3.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  SearchMissionResult get searchMissionResult => $_getN(1);
  @$pb.TagNumber(2)
  set searchMissionResult(SearchMissionResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSearchMissionResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearSearchMissionResult() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<MissionProto> get missionProtoes => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<MissionState> get missionStates => $_getList(3);
}

class GetAssignedMissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAssignedMissionResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..e<AssignMissionResult>(2, 'assignMissionResult', $pb.PbFieldType.OE, defaultOrMaker: AssignMissionResult.UNKNOWN_ASSIGN_MISSION_RESULT, valueOf: AssignMissionResult.valueOf, enumValues: AssignMissionResult.values)
    ..hasRequiredFields = false
  ;

  GetAssignedMissionResponse._() : super();
  factory GetAssignedMissionResponse() => create();
  factory GetAssignedMissionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAssignedMissionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAssignedMissionResponse clone() => GetAssignedMissionResponse()..mergeFromMessage(this);
  GetAssignedMissionResponse copyWith(void Function(GetAssignedMissionResponse) updates) => super.copyWith((message) => updates(message as GetAssignedMissionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAssignedMissionResponse create() => GetAssignedMissionResponse._();
  GetAssignedMissionResponse createEmptyInstance() => create();
  static $pb.PbList<GetAssignedMissionResponse> createRepeated() => $pb.PbList<GetAssignedMissionResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAssignedMissionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAssignedMissionResponse>(create);
  static GetAssignedMissionResponse _defaultInstance;

  @$pb.TagNumber(1)
  $3.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($3.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $3.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  AssignMissionResult get assignMissionResult => $_getN(1);
  @$pb.TagNumber(2)
  set assignMissionResult(AssignMissionResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssignMissionResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssignMissionResult() => clearField(2);
}

class SubmitCollectMissionOutputResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubmitCollectMissionOutputResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..e<SubmitResult>(2, 'submitResult', $pb.PbFieldType.OE, defaultOrMaker: SubmitResult.UNKNOWN_SUBMIT_RESULT, valueOf: SubmitResult.valueOf, enumValues: SubmitResult.values)
    ..hasRequiredFields = false
  ;

  SubmitCollectMissionOutputResponse._() : super();
  factory SubmitCollectMissionOutputResponse() => create();
  factory SubmitCollectMissionOutputResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitCollectMissionOutputResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SubmitCollectMissionOutputResponse clone() => SubmitCollectMissionOutputResponse()..mergeFromMessage(this);
  SubmitCollectMissionOutputResponse copyWith(void Function(SubmitCollectMissionOutputResponse) updates) => super.copyWith((message) => updates(message as SubmitCollectMissionOutputResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitCollectMissionOutputResponse create() => SubmitCollectMissionOutputResponse._();
  SubmitCollectMissionOutputResponse createEmptyInstance() => create();
  static $pb.PbList<SubmitCollectMissionOutputResponse> createRepeated() => $pb.PbList<SubmitCollectMissionOutputResponse>();
  @$core.pragma('dart2js:noInline')
  static SubmitCollectMissionOutputResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitCollectMissionOutputResponse>(create);
  static SubmitCollectMissionOutputResponse _defaultInstance;

  @$pb.TagNumber(1)
  $3.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($3.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $3.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  SubmitResult get submitResult => $_getN(1);
  @$pb.TagNumber(2)
  set submitResult(SubmitResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubmitResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubmitResult() => clearField(2);
}

class SubmitProcessMissionOutputResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubmitProcessMissionOutputResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..e<SubmitResult>(2, 'submitResult', $pb.PbFieldType.OE, defaultOrMaker: SubmitResult.UNKNOWN_SUBMIT_RESULT, valueOf: SubmitResult.valueOf, enumValues: SubmitResult.values)
    ..hasRequiredFields = false
  ;

  SubmitProcessMissionOutputResponse._() : super();
  factory SubmitProcessMissionOutputResponse() => create();
  factory SubmitProcessMissionOutputResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubmitProcessMissionOutputResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SubmitProcessMissionOutputResponse clone() => SubmitProcessMissionOutputResponse()..mergeFromMessage(this);
  SubmitProcessMissionOutputResponse copyWith(void Function(SubmitProcessMissionOutputResponse) updates) => super.copyWith((message) => updates(message as SubmitProcessMissionOutputResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubmitProcessMissionOutputResponse create() => SubmitProcessMissionOutputResponse._();
  SubmitProcessMissionOutputResponse createEmptyInstance() => create();
  static $pb.PbList<SubmitProcessMissionOutputResponse> createRepeated() => $pb.PbList<SubmitProcessMissionOutputResponse>();
  @$core.pragma('dart2js:noInline')
  static SubmitProcessMissionOutputResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubmitProcessMissionOutputResponse>(create);
  static SubmitProcessMissionOutputResponse _defaultInstance;

  @$pb.TagNumber(1)
  $3.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($3.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $3.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  SubmitResult get submitResult => $_getN(1);
  @$pb.TagNumber(2)
  set submitResult(SubmitResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubmitResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubmitResult() => clearField(2);
}

class MissionPage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MissionPage', createEmptyInstance: create)
    ..e<MissionPageMode>(1, 'missionPage', $pb.PbFieldType.OE, defaultOrMaker: MissionPageMode.UNKNOWN_MISSION_PAGE_MODE, valueOf: MissionPageMode.valueOf, enumValues: MissionPageMode.values)
    ..a<$core.int>(2, 'from', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'amount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  MissionPage._() : super();
  factory MissionPage() => create();
  factory MissionPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MissionPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  MissionPage clone() => MissionPage()..mergeFromMessage(this);
  MissionPage copyWith(void Function(MissionPage) updates) => super.copyWith((message) => updates(message as MissionPage));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MissionPage create() => MissionPage._();
  MissionPage createEmptyInstance() => create();
  static $pb.PbList<MissionPage> createRepeated() => $pb.PbList<MissionPage>();
  @$core.pragma('dart2js:noInline')
  static MissionPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MissionPage>(create);
  static MissionPage _defaultInstance;

  @$pb.TagNumber(1)
  MissionPageMode get missionPage => $_getN(0);
  @$pb.TagNumber(1)
  set missionPage(MissionPageMode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMissionPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMissionPage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get from => $_getIZ(1);
  @$pb.TagNumber(2)
  set from($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get amount => $_getIZ(2);
  @$pb.TagNumber(3)
  set amount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);
}

