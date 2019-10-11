///
//  Generated code. Do not modify.
//  source: DealService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Datetime.pb.dart' as $2;
import 'CommonResult.pb.dart' as $3;

import 'DealService.pbenum.dart';

export 'DealService.pbenum.dart';

class InquiryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InquiryRequest', createEmptyInstance: create)
    ..aOM<Inquiry>(1, 'inquiry', subBuilder: Inquiry.create)
    ..hasRequiredFields = false
  ;

  InquiryRequest._() : super();
  factory InquiryRequest() => create();
  factory InquiryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InquiryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InquiryRequest clone() => InquiryRequest()..mergeFromMessage(this);
  InquiryRequest copyWith(void Function(InquiryRequest) updates) => super.copyWith((message) => updates(message as InquiryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InquiryRequest create() => InquiryRequest._();
  InquiryRequest createEmptyInstance() => create();
  static $pb.PbList<InquiryRequest> createRepeated() => $pb.PbList<InquiryRequest>();
  @$core.pragma('dart2js:noInline')
  static InquiryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InquiryRequest>(create);
  static InquiryRequest _defaultInstance;

  @$pb.TagNumber(1)
  Inquiry get inquiry => $_getN(0);
  @$pb.TagNumber(1)
  set inquiry(Inquiry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInquiry() => $_has(0);
  @$pb.TagNumber(1)
  void clearInquiry() => clearField(1);
  @$pb.TagNumber(1)
  Inquiry ensureInquiry() => $_ensure(0);
}

class AccuseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccuseRequest', createEmptyInstance: create)
    ..aOM<Accuse>(1, 'accuse', subBuilder: Accuse.create)
    ..hasRequiredFields = false
  ;

  AccuseRequest._() : super();
  factory AccuseRequest() => create();
  factory AccuseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccuseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccuseRequest clone() => AccuseRequest()..mergeFromMessage(this);
  AccuseRequest copyWith(void Function(AccuseRequest) updates) => super.copyWith((message) => updates(message as AccuseRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccuseRequest create() => AccuseRequest._();
  AccuseRequest createEmptyInstance() => create();
  static $pb.PbList<AccuseRequest> createRepeated() => $pb.PbList<AccuseRequest>();
  @$core.pragma('dart2js:noInline')
  static AccuseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccuseRequest>(create);
  static AccuseRequest _defaultInstance;

  @$pb.TagNumber(1)
  Accuse get accuse => $_getN(0);
  @$pb.TagNumber(1)
  set accuse(Accuse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccuse() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccuse() => clearField(1);
  @$pb.TagNumber(1)
  Accuse ensureAccuse() => $_ensure(0);
}

class Inquiry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Inquiry', createEmptyInstance: create)
    ..aOS(1, 'title')
    ..aOS(2, 'contents')
    ..e<InquiryCategory>(3, 'category', $pb.PbFieldType.OE, defaultOrMaker: InquiryCategory.UNKNOWN_INQUIRY_CATEGORY, valueOf: InquiryCategory.valueOf, enumValues: InquiryCategory.values)
    ..hasRequiredFields = false
  ;

  Inquiry._() : super();
  factory Inquiry() => create();
  factory Inquiry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Inquiry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Inquiry clone() => Inquiry()..mergeFromMessage(this);
  Inquiry copyWith(void Function(Inquiry) updates) => super.copyWith((message) => updates(message as Inquiry));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Inquiry create() => Inquiry._();
  Inquiry createEmptyInstance() => create();
  static $pb.PbList<Inquiry> createRepeated() => $pb.PbList<Inquiry>();
  @$core.pragma('dart2js:noInline')
  static Inquiry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Inquiry>(create);
  static Inquiry _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get contents => $_getSZ(1);
  @$pb.TagNumber(2)
  set contents($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContents() => $_has(1);
  @$pb.TagNumber(2)
  void clearContents() => clearField(2);

  @$pb.TagNumber(3)
  InquiryCategory get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(InquiryCategory v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);
}

class Accuse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Accuse', createEmptyInstance: create)
    ..a<$core.int>(1, 'missionId', $pb.PbFieldType.O3)
    ..aOS(2, 'contents')
    ..e<AccuseCategory>(3, 'category', $pb.PbFieldType.OE, defaultOrMaker: AccuseCategory.UNKNOWN_ACCUSE_CATEGORY, valueOf: AccuseCategory.valueOf, enumValues: AccuseCategory.values)
    ..hasRequiredFields = false
  ;

  Accuse._() : super();
  factory Accuse() => create();
  factory Accuse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Accuse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Accuse clone() => Accuse()..mergeFromMessage(this);
  Accuse copyWith(void Function(Accuse) updates) => super.copyWith((message) => updates(message as Accuse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Accuse create() => Accuse._();
  Accuse createEmptyInstance() => create();
  static $pb.PbList<Accuse> createRepeated() => $pb.PbList<Accuse>();
  @$core.pragma('dart2js:noInline')
  static Accuse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Accuse>(create);
  static Accuse _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get missionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set missionId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMissionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMissionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get contents => $_getSZ(1);
  @$pb.TagNumber(2)
  set contents($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContents() => $_has(1);
  @$pb.TagNumber(2)
  void clearContents() => clearField(2);

  @$pb.TagNumber(3)
  AccuseCategory get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(AccuseCategory v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);
}

class InquiryWithAnswer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InquiryWithAnswer', createEmptyInstance: create)
    ..aOM<Inquiry>(1, 'inquiry', subBuilder: Inquiry.create)
    ..aOB(2, 'isComplete')
    ..aOM<$2.Datetime>(3, 'createdAt', subBuilder: $2.Datetime.create)
    ..aOS(4, 'answer')
    ..hasRequiredFields = false
  ;

  InquiryWithAnswer._() : super();
  factory InquiryWithAnswer() => create();
  factory InquiryWithAnswer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InquiryWithAnswer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InquiryWithAnswer clone() => InquiryWithAnswer()..mergeFromMessage(this);
  InquiryWithAnswer copyWith(void Function(InquiryWithAnswer) updates) => super.copyWith((message) => updates(message as InquiryWithAnswer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InquiryWithAnswer create() => InquiryWithAnswer._();
  InquiryWithAnswer createEmptyInstance() => create();
  static $pb.PbList<InquiryWithAnswer> createRepeated() => $pb.PbList<InquiryWithAnswer>();
  @$core.pragma('dart2js:noInline')
  static InquiryWithAnswer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InquiryWithAnswer>(create);
  static InquiryWithAnswer _defaultInstance;

  @$pb.TagNumber(1)
  Inquiry get inquiry => $_getN(0);
  @$pb.TagNumber(1)
  set inquiry(Inquiry v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInquiry() => $_has(0);
  @$pb.TagNumber(1)
  void clearInquiry() => clearField(1);
  @$pb.TagNumber(1)
  Inquiry ensureInquiry() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get isComplete => $_getBF(1);
  @$pb.TagNumber(2)
  set isComplete($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsComplete() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsComplete() => clearField(2);

  @$pb.TagNumber(3)
  $2.Datetime get createdAt => $_getN(2);
  @$pb.TagNumber(3)
  set createdAt($2.Datetime v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $2.Datetime ensureCreatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get answer => $_getSZ(3);
  @$pb.TagNumber(4)
  set answer($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAnswer() => $_has(3);
  @$pb.TagNumber(4)
  void clearAnswer() => clearField(4);
}

class InquiryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InquiryResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..hasRequiredFields = false
  ;

  InquiryResponse._() : super();
  factory InquiryResponse() => create();
  factory InquiryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InquiryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  InquiryResponse clone() => InquiryResponse()..mergeFromMessage(this);
  InquiryResponse copyWith(void Function(InquiryResponse) updates) => super.copyWith((message) => updates(message as InquiryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InquiryResponse create() => InquiryResponse._();
  InquiryResponse createEmptyInstance() => create();
  static $pb.PbList<InquiryResponse> createRepeated() => $pb.PbList<InquiryResponse>();
  @$core.pragma('dart2js:noInline')
  static InquiryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InquiryResponse>(create);
  static InquiryResponse _defaultInstance;

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
}

class LookUpInquiryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LookUpInquiryResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..pc<InquiryWithAnswer>(2, 'inquiries', $pb.PbFieldType.PM, subBuilder: InquiryWithAnswer.create)
    ..hasRequiredFields = false
  ;

  LookUpInquiryResponse._() : super();
  factory LookUpInquiryResponse() => create();
  factory LookUpInquiryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LookUpInquiryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LookUpInquiryResponse clone() => LookUpInquiryResponse()..mergeFromMessage(this);
  LookUpInquiryResponse copyWith(void Function(LookUpInquiryResponse) updates) => super.copyWith((message) => updates(message as LookUpInquiryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LookUpInquiryResponse create() => LookUpInquiryResponse._();
  LookUpInquiryResponse createEmptyInstance() => create();
  static $pb.PbList<LookUpInquiryResponse> createRepeated() => $pb.PbList<LookUpInquiryResponse>();
  @$core.pragma('dart2js:noInline')
  static LookUpInquiryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LookUpInquiryResponse>(create);
  static LookUpInquiryResponse _defaultInstance;

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
  $core.List<InquiryWithAnswer> get inquiries => $_getList(1);
}

class AccuseResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccuseResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..hasRequiredFields = false
  ;

  AccuseResponse._() : super();
  factory AccuseResponse() => create();
  factory AccuseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccuseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccuseResponse clone() => AccuseResponse()..mergeFromMessage(this);
  AccuseResponse copyWith(void Function(AccuseResponse) updates) => super.copyWith((message) => updates(message as AccuseResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccuseResponse create() => AccuseResponse._();
  AccuseResponse createEmptyInstance() => create();
  static $pb.PbList<AccuseResponse> createRepeated() => $pb.PbList<AccuseResponse>();
  @$core.pragma('dart2js:noInline')
  static AccuseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccuseResponse>(create);
  static AccuseResponse _defaultInstance;

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
}

