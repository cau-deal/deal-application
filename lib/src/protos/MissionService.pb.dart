///
//  Generated code. Do not modify.
//  source: MissionService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Data.pb.dart' as $2;
import 'Datetime.pb.dart' as $3;
import 'CommonResult.pb.dart' as $4;
import 'Profile.pb.dart' as $5;

import 'MissionService.pbenum.dart';
import 'Data.pbenum.dart' as $2;

export 'MissionService.pbenum.dart';

class RegisterMissionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegisterMissionRequest', createEmptyInstance: create)
    ..aOM<Mission>(1, 'mission', subBuilder: Mission.create)
    ..hasRequiredFields = false
  ;

  RegisterMissionRequest._() : super();
  factory RegisterMissionRequest() => create();
  factory RegisterMissionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterMissionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegisterMissionRequest clone() => RegisterMissionRequest()..mergeFromMessage(this);
  RegisterMissionRequest copyWith(void Function(RegisterMissionRequest) updates) => super.copyWith((message) => updates(message as RegisterMissionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterMissionRequest create() => RegisterMissionRequest._();
  RegisterMissionRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterMissionRequest> createRepeated() => $pb.PbList<RegisterMissionRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterMissionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterMissionRequest>(create);
  static RegisterMissionRequest _defaultInstance;

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
    ..e<MissionType>(1, 'missionType', $pb.PbFieldType.OE, defaultOrMaker: MissionType.UNKNOWN_MISSION_TYPE, valueOf: MissionType.valueOf, enumValues: MissionType.values)
    ..aOS(2, 'keyword')
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
  MissionType get missionType => $_getN(0);
  @$pb.TagNumber(1)
  set missionType(MissionType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMissionType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMissionType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get keyword => $_getSZ(1);
  @$pb.TagNumber(2)
  set keyword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeyword() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyword() => clearField(2);

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

class SearchMissionRelevantMeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchMissionRelevantMeRequest', createEmptyInstance: create)
    ..aOM<MissionPage>(1, 'missionPage', subBuilder: MissionPage.create)
    ..hasRequiredFields = false
  ;

  SearchMissionRelevantMeRequest._() : super();
  factory SearchMissionRelevantMeRequest() => create();
  factory SearchMissionRelevantMeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchMissionRelevantMeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchMissionRelevantMeRequest clone() => SearchMissionRelevantMeRequest()..mergeFromMessage(this);
  SearchMissionRelevantMeRequest copyWith(void Function(SearchMissionRelevantMeRequest) updates) => super.copyWith((message) => updates(message as SearchMissionRelevantMeRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchMissionRelevantMeRequest create() => SearchMissionRelevantMeRequest._();
  SearchMissionRelevantMeRequest createEmptyInstance() => create();
  static $pb.PbList<SearchMissionRelevantMeRequest> createRepeated() => $pb.PbList<SearchMissionRelevantMeRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchMissionRelevantMeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchMissionRelevantMeRequest>(create);
  static SearchMissionRelevantMeRequest _defaultInstance;

  @$pb.TagNumber(1)
  MissionPage get missionPage => $_getN(0);
  @$pb.TagNumber(1)
  set missionPage(MissionPage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMissionPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMissionPage() => clearField(1);
  @$pb.TagNumber(1)
  MissionPage ensureMissionPage() => $_ensure(0);
}

class SubmitCollectMissionOutputRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubmitCollectMissionOutputRequest', createEmptyInstance: create)
    ..a<$core.int>(1, 'missionId', $pb.PbFieldType.O3)
    ..pc<$2.Data>(2, 'datas', $pb.PbFieldType.PM, subBuilder: $2.Data.create)
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
  $core.List<$2.Data> get datas => $_getList(1);
}

class SubmitProcessMissionOutputRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SubmitProcessMissionOutputRequest', createEmptyInstance: create)
    ..a<$core.int>(1, 'missionId', $pb.PbFieldType.O3)
    ..pc<$2.ProcessedImageData>(2, 'datas', $pb.PbFieldType.PM, subBuilder: $2.ProcessedImageData.create)
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
  $core.List<$2.ProcessedImageData> get datas => $_getList(1);
}

class Mission extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Mission', createEmptyInstance: create)
    ..a<$core.int>(1, 'missionId', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..aOS(3, 'contents')
    ..e<MissionType>(4, 'missionType', $pb.PbFieldType.OE, defaultOrMaker: MissionType.UNKNOWN_MISSION_TYPE, valueOf: MissionType.valueOf, enumValues: MissionType.values)
    ..e<$2.DataType>(5, 'dataType', $pb.PbFieldType.OE, defaultOrMaker: $2.DataType.UNKNOWN_DATA_TYPE, valueOf: $2.DataType.valueOf, enumValues: $2.DataType.values)
    ..a<$core.int>(6, 'unitPackage', $pb.PbFieldType.O3)
    ..a<$core.int>(7, 'priceOfPackage', $pb.PbFieldType.O3)
    ..aOM<$3.Datetime>(8, 'deadline', subBuilder: $3.Datetime.create)
    ..a<$core.int>(9, 'orderPackageQuantity', $pb.PbFieldType.O3)
    ..aOS(10, 'summary')
    ..aOS(11, 'contactClause')
    ..aOS(12, 'specification')
    ..pc<$2.MissionExplanationImage>(13, 'missionExplanationImages', $pb.PbFieldType.PM, subBuilder: $2.MissionExplanationImage.create)
    ..e<MissionState>(14, 'missionState', $pb.PbFieldType.OE, defaultOrMaker: MissionState.UNKNOWN_MISSION_STATE, valueOf: MissionState.valueOf, enumValues: MissionState.values)
    ..aOM<$3.Datetime>(15, 'createdAt', subBuilder: $3.Datetime.create)
    ..aOM<$3.Datetime>(16, 'beginning', subBuilder: $3.Datetime.create)
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
  $2.DataType get dataType => $_getN(4);
  @$pb.TagNumber(5)
  set dataType($2.DataType v) { setField(5, v); }
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
  $core.int get priceOfPackage => $_getIZ(6);
  @$pb.TagNumber(7)
  set priceOfPackage($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPriceOfPackage() => $_has(6);
  @$pb.TagNumber(7)
  void clearPriceOfPackage() => clearField(7);

  @$pb.TagNumber(8)
  $3.Datetime get deadline => $_getN(7);
  @$pb.TagNumber(8)
  set deadline($3.Datetime v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDeadline() => $_has(7);
  @$pb.TagNumber(8)
  void clearDeadline() => clearField(8);
  @$pb.TagNumber(8)
  $3.Datetime ensureDeadline() => $_ensure(7);

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
  $core.List<$2.MissionExplanationImage> get missionExplanationImages => $_getList(12);

  @$pb.TagNumber(14)
  MissionState get missionState => $_getN(13);
  @$pb.TagNumber(14)
  set missionState(MissionState v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasMissionState() => $_has(13);
  @$pb.TagNumber(14)
  void clearMissionState() => clearField(14);

  @$pb.TagNumber(15)
  $3.Datetime get createdAt => $_getN(14);
  @$pb.TagNumber(15)
  set createdAt($3.Datetime v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasCreatedAt() => $_has(14);
  @$pb.TagNumber(15)
  void clearCreatedAt() => clearField(15);
  @$pb.TagNumber(15)
  $3.Datetime ensureCreatedAt() => $_ensure(14);

  @$pb.TagNumber(16)
  $3.Datetime get beginning => $_getN(15);
  @$pb.TagNumber(16)
  set beginning($3.Datetime v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasBeginning() => $_has(15);
  @$pb.TagNumber(16)
  void clearBeginning() => clearField(16);
  @$pb.TagNumber(16)
  $3.Datetime ensureBeginning() => $_ensure(15);
}

class MissionProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MissionProto', createEmptyInstance: create)
    ..a<$core.int>(1, 'missionId', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..e<MissionType>(4, 'missionType', $pb.PbFieldType.OE, defaultOrMaker: MissionType.UNKNOWN_MISSION_TYPE, valueOf: MissionType.valueOf, enumValues: MissionType.values)
    ..a<$core.int>(7, 'priceOfPackage', $pb.PbFieldType.O3)
    ..aOM<$3.Datetime>(8, 'deadline', subBuilder: $3.Datetime.create)
    ..aOS(10, 'summary')
    ..e<MissionState>(14, 'missionState', $pb.PbFieldType.OE, defaultOrMaker: MissionState.UNKNOWN_MISSION_STATE, valueOf: MissionState.valueOf, enumValues: MissionState.values)
    ..aOM<$3.Datetime>(15, 'createdAt', subBuilder: $3.Datetime.create)
    ..aOS(16, 'thumbnailUrl')
    ..aOM<$3.Datetime>(17, 'beginning', subBuilder: $3.Datetime.create)
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
  MissionType get missionType => $_getN(2);
  @$pb.TagNumber(4)
  set missionType(MissionType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMissionType() => $_has(2);
  @$pb.TagNumber(4)
  void clearMissionType() => clearField(4);

  @$pb.TagNumber(7)
  $core.int get priceOfPackage => $_getIZ(3);
  @$pb.TagNumber(7)
  set priceOfPackage($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(7)
  $core.bool hasPriceOfPackage() => $_has(3);
  @$pb.TagNumber(7)
  void clearPriceOfPackage() => clearField(7);

  @$pb.TagNumber(8)
  $3.Datetime get deadline => $_getN(4);
  @$pb.TagNumber(8)
  set deadline($3.Datetime v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDeadline() => $_has(4);
  @$pb.TagNumber(8)
  void clearDeadline() => clearField(8);
  @$pb.TagNumber(8)
  $3.Datetime ensureDeadline() => $_ensure(4);

  @$pb.TagNumber(10)
  $core.String get summary => $_getSZ(5);
  @$pb.TagNumber(10)
  set summary($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(10)
  $core.bool hasSummary() => $_has(5);
  @$pb.TagNumber(10)
  void clearSummary() => clearField(10);

  @$pb.TagNumber(14)
  MissionState get missionState => $_getN(6);
  @$pb.TagNumber(14)
  set missionState(MissionState v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasMissionState() => $_has(6);
  @$pb.TagNumber(14)
  void clearMissionState() => clearField(14);

  @$pb.TagNumber(15)
  $3.Datetime get createdAt => $_getN(7);
  @$pb.TagNumber(15)
  set createdAt($3.Datetime v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(15)
  void clearCreatedAt() => clearField(15);
  @$pb.TagNumber(15)
  $3.Datetime ensureCreatedAt() => $_ensure(7);

  @$pb.TagNumber(16)
  $core.String get thumbnailUrl => $_getSZ(8);
  @$pb.TagNumber(16)
  set thumbnailUrl($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(16)
  $core.bool hasThumbnailUrl() => $_has(8);
  @$pb.TagNumber(16)
  void clearThumbnailUrl() => clearField(16);

  @$pb.TagNumber(17)
  $3.Datetime get beginning => $_getN(9);
  @$pb.TagNumber(17)
  set beginning($3.Datetime v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasBeginning() => $_has(9);
  @$pb.TagNumber(17)
  void clearBeginning() => clearField(17);
  @$pb.TagNumber(17)
  $3.Datetime ensureBeginning() => $_ensure(9);
}

class ConductMissionProto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ConductMissionProto', createEmptyInstance: create)
    ..a<$core.int>(1, 'missionId', $pb.PbFieldType.O3)
    ..aOS(2, 'title')
    ..e<MissionType>(4, 'missionType', $pb.PbFieldType.OE, defaultOrMaker: MissionType.UNKNOWN_MISSION_TYPE, valueOf: MissionType.valueOf, enumValues: MissionType.values)
    ..a<$core.int>(7, 'priceOfPackage', $pb.PbFieldType.O3)
    ..aOM<$3.Datetime>(8, 'deadline', subBuilder: $3.Datetime.create)
    ..aOS(10, 'summary')
    ..aOM<$3.Datetime>(15, 'createdAt', subBuilder: $3.Datetime.create)
    ..aOS(16, 'thumbnailUrl')
    ..aOM<$3.Datetime>(17, 'beginning', subBuilder: $3.Datetime.create)
    ..e<ConductMissionState>(18, 'conductMissionState', $pb.PbFieldType.OE, defaultOrMaker: ConductMissionState.UNKNOWN_CONDUCT_MISSION_STATE, valueOf: ConductMissionState.valueOf, enumValues: ConductMissionState.values)
    ..hasRequiredFields = false
  ;

  ConductMissionProto._() : super();
  factory ConductMissionProto() => create();
  factory ConductMissionProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConductMissionProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ConductMissionProto clone() => ConductMissionProto()..mergeFromMessage(this);
  ConductMissionProto copyWith(void Function(ConductMissionProto) updates) => super.copyWith((message) => updates(message as ConductMissionProto));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConductMissionProto create() => ConductMissionProto._();
  ConductMissionProto createEmptyInstance() => create();
  static $pb.PbList<ConductMissionProto> createRepeated() => $pb.PbList<ConductMissionProto>();
  @$core.pragma('dart2js:noInline')
  static ConductMissionProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConductMissionProto>(create);
  static ConductMissionProto _defaultInstance;

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
  MissionType get missionType => $_getN(2);
  @$pb.TagNumber(4)
  set missionType(MissionType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMissionType() => $_has(2);
  @$pb.TagNumber(4)
  void clearMissionType() => clearField(4);

  @$pb.TagNumber(7)
  $core.int get priceOfPackage => $_getIZ(3);
  @$pb.TagNumber(7)
  set priceOfPackage($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(7)
  $core.bool hasPriceOfPackage() => $_has(3);
  @$pb.TagNumber(7)
  void clearPriceOfPackage() => clearField(7);

  @$pb.TagNumber(8)
  $3.Datetime get deadline => $_getN(4);
  @$pb.TagNumber(8)
  set deadline($3.Datetime v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDeadline() => $_has(4);
  @$pb.TagNumber(8)
  void clearDeadline() => clearField(8);
  @$pb.TagNumber(8)
  $3.Datetime ensureDeadline() => $_ensure(4);

  @$pb.TagNumber(10)
  $core.String get summary => $_getSZ(5);
  @$pb.TagNumber(10)
  set summary($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(10)
  $core.bool hasSummary() => $_has(5);
  @$pb.TagNumber(10)
  void clearSummary() => clearField(10);

  @$pb.TagNumber(15)
  $3.Datetime get createdAt => $_getN(6);
  @$pb.TagNumber(15)
  set createdAt($3.Datetime v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(15)
  void clearCreatedAt() => clearField(15);
  @$pb.TagNumber(15)
  $3.Datetime ensureCreatedAt() => $_ensure(6);

  @$pb.TagNumber(16)
  $core.String get thumbnailUrl => $_getSZ(7);
  @$pb.TagNumber(16)
  set thumbnailUrl($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(16)
  $core.bool hasThumbnailUrl() => $_has(7);
  @$pb.TagNumber(16)
  void clearThumbnailUrl() => clearField(16);

  @$pb.TagNumber(17)
  $3.Datetime get beginning => $_getN(8);
  @$pb.TagNumber(17)
  set beginning($3.Datetime v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasBeginning() => $_has(8);
  @$pb.TagNumber(17)
  void clearBeginning() => clearField(17);
  @$pb.TagNumber(17)
  $3.Datetime ensureBeginning() => $_ensure(8);

  @$pb.TagNumber(18)
  ConductMissionState get conductMissionState => $_getN(9);
  @$pb.TagNumber(18)
  set conductMissionState(ConductMissionState v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasConductMissionState() => $_has(9);
  @$pb.TagNumber(18)
  void clearConductMissionState() => clearField(18);
}

class MissionPage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MissionPage', createEmptyInstance: create)
    ..e<MissionPageMode>(1, 'missionPageMode', $pb.PbFieldType.OE, defaultOrMaker: MissionPageMode.UNKNOWN_MISSION_PAGE_MODE, valueOf: MissionPageMode.valueOf, enumValues: MissionPageMode.values)
    ..a<$core.int>(2, 'Offset', $pb.PbFieldType.O3)
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
  MissionPageMode get missionPageMode => $_getN(0);
  @$pb.TagNumber(1)
  set missionPageMode(MissionPageMode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMissionPageMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMissionPageMode() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get offset => $_getIZ(1);
  @$pb.TagNumber(2)
  set offset($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get amount => $_getIZ(2);
  @$pb.TagNumber(3)
  set amount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);
}

class RegisterMissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegisterMissionResponse', createEmptyInstance: create)
    ..aOM<$4.CommonResult>(1, 'result', subBuilder: $4.CommonResult.create)
    ..e<RegisterMissionResult>(2, 'registerMissionResult', $pb.PbFieldType.OE, defaultOrMaker: RegisterMissionResult.UNKNOWN_REGISTER_MISSION_RESULT, valueOf: RegisterMissionResult.valueOf, enumValues: RegisterMissionResult.values)
    ..hasRequiredFields = false
  ;

  RegisterMissionResponse._() : super();
  factory RegisterMissionResponse() => create();
  factory RegisterMissionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterMissionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegisterMissionResponse clone() => RegisterMissionResponse()..mergeFromMessage(this);
  RegisterMissionResponse copyWith(void Function(RegisterMissionResponse) updates) => super.copyWith((message) => updates(message as RegisterMissionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegisterMissionResponse create() => RegisterMissionResponse._();
  RegisterMissionResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterMissionResponse> createRepeated() => $pb.PbList<RegisterMissionResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterMissionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterMissionResponse>(create);
  static RegisterMissionResponse _defaultInstance;

  @$pb.TagNumber(1)
  $4.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $4.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  RegisterMissionResult get registerMissionResult => $_getN(1);
  @$pb.TagNumber(2)
  set registerMissionResult(RegisterMissionResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegisterMissionResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegisterMissionResult() => clearField(2);
}

class SearchMissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchMissionResponse', createEmptyInstance: create)
    ..aOM<$4.CommonResult>(1, 'result', subBuilder: $4.CommonResult.create)
    ..e<SearchMissionResult>(2, 'searchMissionResult', $pb.PbFieldType.OE, defaultOrMaker: SearchMissionResult.UNKNOWN_SEARCH_MISSION_RESULT, valueOf: SearchMissionResult.valueOf, enumValues: SearchMissionResult.values)
    ..pc<MissionProto>(3, 'missionProtoes', $pb.PbFieldType.PM, subBuilder: MissionProto.create)
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
  $4.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $4.CommonResult ensureResult() => $_ensure(0);

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
}

class SearchMissionWithIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchMissionWithIdResponse', createEmptyInstance: create)
    ..aOM<$4.CommonResult>(1, 'result', subBuilder: $4.CommonResult.create)
    ..e<SearchMissionResult>(2, 'searchMissionResult', $pb.PbFieldType.OE, defaultOrMaker: SearchMissionResult.UNKNOWN_SEARCH_MISSION_RESULT, valueOf: SearchMissionResult.valueOf, enumValues: SearchMissionResult.values)
    ..aOM<Mission>(3, 'mission', subBuilder: Mission.create)
    ..hasRequiredFields = false
  ;

  SearchMissionWithIdResponse._() : super();
  factory SearchMissionWithIdResponse() => create();
  factory SearchMissionWithIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchMissionWithIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchMissionWithIdResponse clone() => SearchMissionWithIdResponse()..mergeFromMessage(this);
  SearchMissionWithIdResponse copyWith(void Function(SearchMissionWithIdResponse) updates) => super.copyWith((message) => updates(message as SearchMissionWithIdResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchMissionWithIdResponse create() => SearchMissionWithIdResponse._();
  SearchMissionWithIdResponse createEmptyInstance() => create();
  static $pb.PbList<SearchMissionWithIdResponse> createRepeated() => $pb.PbList<SearchMissionWithIdResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchMissionWithIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchMissionWithIdResponse>(create);
  static SearchMissionWithIdResponse _defaultInstance;

  @$pb.TagNumber(1)
  $4.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $4.CommonResult ensureResult() => $_ensure(0);

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

class SearchRegisterMissionRelevantMeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchRegisterMissionRelevantMeResponse', createEmptyInstance: create)
    ..aOM<$4.CommonResult>(1, 'result', subBuilder: $4.CommonResult.create)
    ..e<SearchMissionResult>(2, 'searchMissionResult', $pb.PbFieldType.OE, defaultOrMaker: SearchMissionResult.UNKNOWN_SEARCH_MISSION_RESULT, valueOf: SearchMissionResult.valueOf, enumValues: SearchMissionResult.values)
    ..pc<MissionProto>(3, 'missionProtoes', $pb.PbFieldType.PM, subBuilder: MissionProto.create)
    ..hasRequiredFields = false
  ;

  SearchRegisterMissionRelevantMeResponse._() : super();
  factory SearchRegisterMissionRelevantMeResponse() => create();
  factory SearchRegisterMissionRelevantMeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchRegisterMissionRelevantMeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchRegisterMissionRelevantMeResponse clone() => SearchRegisterMissionRelevantMeResponse()..mergeFromMessage(this);
  SearchRegisterMissionRelevantMeResponse copyWith(void Function(SearchRegisterMissionRelevantMeResponse) updates) => super.copyWith((message) => updates(message as SearchRegisterMissionRelevantMeResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchRegisterMissionRelevantMeResponse create() => SearchRegisterMissionRelevantMeResponse._();
  SearchRegisterMissionRelevantMeResponse createEmptyInstance() => create();
  static $pb.PbList<SearchRegisterMissionRelevantMeResponse> createRepeated() => $pb.PbList<SearchRegisterMissionRelevantMeResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchRegisterMissionRelevantMeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchRegisterMissionRelevantMeResponse>(create);
  static SearchRegisterMissionRelevantMeResponse _defaultInstance;

  @$pb.TagNumber(1)
  $4.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $4.CommonResult ensureResult() => $_ensure(0);

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
}

class SearchConductMissionRelevantMeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SearchConductMissionRelevantMeResponse', createEmptyInstance: create)
    ..aOM<$4.CommonResult>(1, 'result', subBuilder: $4.CommonResult.create)
    ..e<SearchMissionResult>(2, 'searchMissionResult', $pb.PbFieldType.OE, defaultOrMaker: SearchMissionResult.UNKNOWN_SEARCH_MISSION_RESULT, valueOf: SearchMissionResult.valueOf, enumValues: SearchMissionResult.values)
    ..pc<ConductMissionProto>(3, 'conductMissionProtoes', $pb.PbFieldType.PM, subBuilder: ConductMissionProto.create)
    ..hasRequiredFields = false
  ;

  SearchConductMissionRelevantMeResponse._() : super();
  factory SearchConductMissionRelevantMeResponse() => create();
  factory SearchConductMissionRelevantMeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchConductMissionRelevantMeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SearchConductMissionRelevantMeResponse clone() => SearchConductMissionRelevantMeResponse()..mergeFromMessage(this);
  SearchConductMissionRelevantMeResponse copyWith(void Function(SearchConductMissionRelevantMeResponse) updates) => super.copyWith((message) => updates(message as SearchConductMissionRelevantMeResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchConductMissionRelevantMeResponse create() => SearchConductMissionRelevantMeResponse._();
  SearchConductMissionRelevantMeResponse createEmptyInstance() => create();
  static $pb.PbList<SearchConductMissionRelevantMeResponse> createRepeated() => $pb.PbList<SearchConductMissionRelevantMeResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchConductMissionRelevantMeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchConductMissionRelevantMeResponse>(create);
  static SearchConductMissionRelevantMeResponse _defaultInstance;

  @$pb.TagNumber(1)
  $4.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $4.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  SearchMissionResult get searchMissionResult => $_getN(1);
  @$pb.TagNumber(2)
  set searchMissionResult(SearchMissionResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSearchMissionResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearSearchMissionResult() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<ConductMissionProto> get conductMissionProtoes => $_getList(2);
}

class GetAssignedMissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAssignedMissionResponse', createEmptyInstance: create)
    ..aOM<$4.CommonResult>(1, 'result', subBuilder: $4.CommonResult.create)
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
  $4.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $4.CommonResult ensureResult() => $_ensure(0);

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
    ..aOM<$4.CommonResult>(1, 'result', subBuilder: $4.CommonResult.create)
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
  $4.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $4.CommonResult ensureResult() => $_ensure(0);

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
    ..aOM<$4.CommonResult>(1, 'result', subBuilder: $4.CommonResult.create)
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
  $4.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $4.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  SubmitResult get submitResult => $_getN(1);
  @$pb.TagNumber(2)
  set submitResult(SubmitResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubmitResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubmitResult() => clearField(2);
}

class CountFetchMissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CountFetchMissionResponse', createEmptyInstance: create)
    ..aOM<$4.CommonResult>(1, 'result', subBuilder: $4.CommonResult.create)
    ..aInt64(2, 'val')
    ..hasRequiredFields = false
  ;

  CountFetchMissionResponse._() : super();
  factory CountFetchMissionResponse() => create();
  factory CountFetchMissionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountFetchMissionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CountFetchMissionResponse clone() => CountFetchMissionResponse()..mergeFromMessage(this);
  CountFetchMissionResponse copyWith(void Function(CountFetchMissionResponse) updates) => super.copyWith((message) => updates(message as CountFetchMissionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountFetchMissionResponse create() => CountFetchMissionResponse._();
  CountFetchMissionResponse createEmptyInstance() => create();
  static $pb.PbList<CountFetchMissionResponse> createRepeated() => $pb.PbList<CountFetchMissionResponse>();
  @$core.pragma('dart2js:noInline')
  static CountFetchMissionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountFetchMissionResponse>(create);
  static CountFetchMissionResponse _defaultInstance;

  @$pb.TagNumber(1)
  $4.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $4.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get val => $_getI64(1);
  @$pb.TagNumber(2)
  set val($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearVal() => clearField(2);
}

class GetMissionOwnerInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetMissionOwnerInfoResponse', createEmptyInstance: create)
    ..aOM<$4.CommonResult>(1, 'result', subBuilder: $4.CommonResult.create)
    ..aOM<$5.Profile>(2, 'registerProfile', subBuilder: $5.Profile.create)
    ..hasRequiredFields = false
  ;

  GetMissionOwnerInfoResponse._() : super();
  factory GetMissionOwnerInfoResponse() => create();
  factory GetMissionOwnerInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMissionOwnerInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetMissionOwnerInfoResponse clone() => GetMissionOwnerInfoResponse()..mergeFromMessage(this);
  GetMissionOwnerInfoResponse copyWith(void Function(GetMissionOwnerInfoResponse) updates) => super.copyWith((message) => updates(message as GetMissionOwnerInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMissionOwnerInfoResponse create() => GetMissionOwnerInfoResponse._();
  GetMissionOwnerInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetMissionOwnerInfoResponse> createRepeated() => $pb.PbList<GetMissionOwnerInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMissionOwnerInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMissionOwnerInfoResponse>(create);
  static GetMissionOwnerInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  $4.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $4.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  $5.Profile get registerProfile => $_getN(1);
  @$pb.TagNumber(2)
  set registerProfile($5.Profile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegisterProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegisterProfile() => clearField(2);
  @$pb.TagNumber(2)
  $5.Profile ensureRegisterProfile() => $_ensure(1);
}

class GetParticipatedMissionStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetParticipatedMissionStateResponse', createEmptyInstance: create)
    ..aOM<$4.CommonResult>(1, 'result', subBuilder: $4.CommonResult.create)
    ..e<ConductMissionState>(2, 'conductMissionState', $pb.PbFieldType.OE, defaultOrMaker: ConductMissionState.UNKNOWN_CONDUCT_MISSION_STATE, valueOf: ConductMissionState.valueOf, enumValues: ConductMissionState.values)
    ..hasRequiredFields = false
  ;

  GetParticipatedMissionStateResponse._() : super();
  factory GetParticipatedMissionStateResponse() => create();
  factory GetParticipatedMissionStateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetParticipatedMissionStateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetParticipatedMissionStateResponse clone() => GetParticipatedMissionStateResponse()..mergeFromMessage(this);
  GetParticipatedMissionStateResponse copyWith(void Function(GetParticipatedMissionStateResponse) updates) => super.copyWith((message) => updates(message as GetParticipatedMissionStateResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetParticipatedMissionStateResponse create() => GetParticipatedMissionStateResponse._();
  GetParticipatedMissionStateResponse createEmptyInstance() => create();
  static $pb.PbList<GetParticipatedMissionStateResponse> createRepeated() => $pb.PbList<GetParticipatedMissionStateResponse>();
  @$core.pragma('dart2js:noInline')
  static GetParticipatedMissionStateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetParticipatedMissionStateResponse>(create);
  static GetParticipatedMissionStateResponse _defaultInstance;

  @$pb.TagNumber(1)
  $4.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($4.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $4.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ConductMissionState get conductMissionState => $_getN(1);
  @$pb.TagNumber(2)
  set conductMissionState(ConductMissionState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConductMissionState() => $_has(1);
  @$pb.TagNumber(2)
  void clearConductMissionState() => clearField(2);
}

