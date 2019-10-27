///
//  Generated code. Do not modify.
//  source: NotificationService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Datetime.pb.dart' as $2;
import 'CommonResult.pb.dart' as $3;

import 'NotificationService.pbenum.dart';

export 'NotificationService.pbenum.dart';

class PostNoticeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PostNoticeRequest', createEmptyInstance: create)
    ..aOM<Notice>(1, 'notice', subBuilder: Notice.create)
    ..hasRequiredFields = false
  ;

  PostNoticeRequest._() : super();
  factory PostNoticeRequest() => create();
  factory PostNoticeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostNoticeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PostNoticeRequest clone() => PostNoticeRequest()..mergeFromMessage(this);
  PostNoticeRequest copyWith(void Function(PostNoticeRequest) updates) => super.copyWith((message) => updates(message as PostNoticeRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostNoticeRequest create() => PostNoticeRequest._();
  PostNoticeRequest createEmptyInstance() => create();
  static $pb.PbList<PostNoticeRequest> createRepeated() => $pb.PbList<PostNoticeRequest>();
  @$core.pragma('dart2js:noInline')
  static PostNoticeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostNoticeRequest>(create);
  static PostNoticeRequest _defaultInstance;

  @$pb.TagNumber(1)
  Notice get notice => $_getN(0);
  @$pb.TagNumber(1)
  set notice(Notice v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotice() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotice() => clearField(1);
  @$pb.TagNumber(1)
  Notice ensureNotice() => $_ensure(0);
}

class GetPushListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetPushListRequest', createEmptyInstance: create)
    ..e<IsReadPushType>(1, 'isReadPushType', $pb.PbFieldType.OE, defaultOrMaker: IsReadPushType.UNKNOWN_IS_READ_PUSH_TYPE, valueOf: IsReadPushType.valueOf, enumValues: IsReadPushType.values)
    ..hasRequiredFields = false
  ;

  GetPushListRequest._() : super();
  factory GetPushListRequest() => create();
  factory GetPushListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPushListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetPushListRequest clone() => GetPushListRequest()..mergeFromMessage(this);
  GetPushListRequest copyWith(void Function(GetPushListRequest) updates) => super.copyWith((message) => updates(message as GetPushListRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPushListRequest create() => GetPushListRequest._();
  GetPushListRequest createEmptyInstance() => create();
  static $pb.PbList<GetPushListRequest> createRepeated() => $pb.PbList<GetPushListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPushListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPushListRequest>(create);
  static GetPushListRequest _defaultInstance;

  @$pb.TagNumber(1)
  IsReadPushType get isReadPushType => $_getN(0);
  @$pb.TagNumber(1)
  set isReadPushType(IsReadPushType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsReadPushType() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsReadPushType() => clearField(1);
}

class ReadPushRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadPushRequest', createEmptyInstance: create)
    ..a<$core.int>(1, 'pushId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ReadPushRequest._() : super();
  factory ReadPushRequest() => create();
  factory ReadPushRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadPushRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadPushRequest clone() => ReadPushRequest()..mergeFromMessage(this);
  ReadPushRequest copyWith(void Function(ReadPushRequest) updates) => super.copyWith((message) => updates(message as ReadPushRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadPushRequest create() => ReadPushRequest._();
  ReadPushRequest createEmptyInstance() => create();
  static $pb.PbList<ReadPushRequest> createRepeated() => $pb.PbList<ReadPushRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadPushRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadPushRequest>(create);
  static ReadPushRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pushId => $_getIZ(0);
  @$pb.TagNumber(1)
  set pushId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPushId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPushId() => clearField(1);
}

class TransmitFCMRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransmitFCMRequest', createEmptyInstance: create)
    ..aOM<FCM>(1, 'fcm', subBuilder: FCM.create)
    ..hasRequiredFields = false
  ;

  TransmitFCMRequest._() : super();
  factory TransmitFCMRequest() => create();
  factory TransmitFCMRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransmitFCMRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TransmitFCMRequest clone() => TransmitFCMRequest()..mergeFromMessage(this);
  TransmitFCMRequest copyWith(void Function(TransmitFCMRequest) updates) => super.copyWith((message) => updates(message as TransmitFCMRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransmitFCMRequest create() => TransmitFCMRequest._();
  TransmitFCMRequest createEmptyInstance() => create();
  static $pb.PbList<TransmitFCMRequest> createRepeated() => $pb.PbList<TransmitFCMRequest>();
  @$core.pragma('dart2js:noInline')
  static TransmitFCMRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransmitFCMRequest>(create);
  static TransmitFCMRequest _defaultInstance;

  @$pb.TagNumber(1)
  FCM get fcm => $_getN(0);
  @$pb.TagNumber(1)
  set fcm(FCM v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFcm() => $_has(0);
  @$pb.TagNumber(1)
  void clearFcm() => clearField(1);
  @$pb.TagNumber(1)
  FCM ensureFcm() => $_ensure(0);
}

class Notice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Notice', createEmptyInstance: create)
    ..aOS(1, 'title')
    ..aOS(2, 'content')
    ..hasRequiredFields = false
  ;

  Notice._() : super();
  factory Notice() => create();
  factory Notice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Notice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Notice clone() => Notice()..mergeFromMessage(this);
  Notice copyWith(void Function(Notice) updates) => super.copyWith((message) => updates(message as Notice));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Notice create() => Notice._();
  Notice createEmptyInstance() => create();
  static $pb.PbList<Notice> createRepeated() => $pb.PbList<Notice>();
  @$core.pragma('dart2js:noInline')
  static Notice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Notice>(create);
  static Notice _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class Push extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Push', createEmptyInstance: create)
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'content')
    ..aOB(3, 'isRead')
    ..aOM<$2.Datetime>(4, 'createdAt', subBuilder: $2.Datetime.create)
    ..hasRequiredFields = false
  ;

  Push._() : super();
  factory Push() => create();
  factory Push.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Push.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Push clone() => Push()..mergeFromMessage(this);
  Push copyWith(void Function(Push) updates) => super.copyWith((message) => updates(message as Push));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Push create() => Push._();
  Push createEmptyInstance() => create();
  static $pb.PbList<Push> createRepeated() => $pb.PbList<Push>();
  @$core.pragma('dart2js:noInline')
  static Push getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Push>(create);
  static Push _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isRead => $_getBF(2);
  @$pb.TagNumber(3)
  set isRead($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsRead() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsRead() => clearField(3);

  @$pb.TagNumber(4)
  $2.Datetime get createdAt => $_getN(3);
  @$pb.TagNumber(4)
  set createdAt($2.Datetime v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);
  @$pb.TagNumber(4)
  $2.Datetime ensureCreatedAt() => $_ensure(3);
}

class FCM extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FCM', createEmptyInstance: create)
    ..aOS(1, 'fcmKey')
    ..hasRequiredFields = false
  ;

  FCM._() : super();
  factory FCM() => create();
  factory FCM.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FCM.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FCM clone() => FCM()..mergeFromMessage(this);
  FCM copyWith(void Function(FCM) updates) => super.copyWith((message) => updates(message as FCM));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FCM create() => FCM._();
  FCM createEmptyInstance() => create();
  static $pb.PbList<FCM> createRepeated() => $pb.PbList<FCM>();
  @$core.pragma('dart2js:noInline')
  static FCM getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FCM>(create);
  static FCM _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fcmKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set fcmKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFcmKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearFcmKey() => clearField(1);
}

class PostNoticeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PostNoticeResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..hasRequiredFields = false
  ;

  PostNoticeResponse._() : super();
  factory PostNoticeResponse() => create();
  factory PostNoticeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PostNoticeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PostNoticeResponse clone() => PostNoticeResponse()..mergeFromMessage(this);
  PostNoticeResponse copyWith(void Function(PostNoticeResponse) updates) => super.copyWith((message) => updates(message as PostNoticeResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostNoticeResponse create() => PostNoticeResponse._();
  PostNoticeResponse createEmptyInstance() => create();
  static $pb.PbList<PostNoticeResponse> createRepeated() => $pb.PbList<PostNoticeResponse>();
  @$core.pragma('dart2js:noInline')
  static PostNoticeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostNoticeResponse>(create);
  static PostNoticeResponse _defaultInstance;

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

class CountNoReadPushResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CountNoReadPushResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..a<$core.int>(2, 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  CountNoReadPushResponse._() : super();
  factory CountNoReadPushResponse() => create();
  factory CountNoReadPushResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountNoReadPushResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CountNoReadPushResponse clone() => CountNoReadPushResponse()..mergeFromMessage(this);
  CountNoReadPushResponse copyWith(void Function(CountNoReadPushResponse) updates) => super.copyWith((message) => updates(message as CountNoReadPushResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CountNoReadPushResponse create() => CountNoReadPushResponse._();
  CountNoReadPushResponse createEmptyInstance() => create();
  static $pb.PbList<CountNoReadPushResponse> createRepeated() => $pb.PbList<CountNoReadPushResponse>();
  @$core.pragma('dart2js:noInline')
  static CountNoReadPushResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountNoReadPushResponse>(create);
  static CountNoReadPushResponse _defaultInstance;

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
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class GetPushListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetPushListResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..pc<Push>(2, 'pushList', $pb.PbFieldType.PM, subBuilder: Push.create)
    ..hasRequiredFields = false
  ;

  GetPushListResponse._() : super();
  factory GetPushListResponse() => create();
  factory GetPushListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPushListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetPushListResponse clone() => GetPushListResponse()..mergeFromMessage(this);
  GetPushListResponse copyWith(void Function(GetPushListResponse) updates) => super.copyWith((message) => updates(message as GetPushListResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPushListResponse create() => GetPushListResponse._();
  GetPushListResponse createEmptyInstance() => create();
  static $pb.PbList<GetPushListResponse> createRepeated() => $pb.PbList<GetPushListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPushListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPushListResponse>(create);
  static GetPushListResponse _defaultInstance;

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
  $core.List<Push> get pushList => $_getList(1);
}

class ReadPushResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ReadPushResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..hasRequiredFields = false
  ;

  ReadPushResponse._() : super();
  factory ReadPushResponse() => create();
  factory ReadPushResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadPushResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ReadPushResponse clone() => ReadPushResponse()..mergeFromMessage(this);
  ReadPushResponse copyWith(void Function(ReadPushResponse) updates) => super.copyWith((message) => updates(message as ReadPushResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadPushResponse create() => ReadPushResponse._();
  ReadPushResponse createEmptyInstance() => create();
  static $pb.PbList<ReadPushResponse> createRepeated() => $pb.PbList<ReadPushResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadPushResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadPushResponse>(create);
  static ReadPushResponse _defaultInstance;

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

class TransmitFCMResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransmitFCMResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..hasRequiredFields = false
  ;

  TransmitFCMResponse._() : super();
  factory TransmitFCMResponse() => create();
  factory TransmitFCMResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransmitFCMResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TransmitFCMResponse clone() => TransmitFCMResponse()..mergeFromMessage(this);
  TransmitFCMResponse copyWith(void Function(TransmitFCMResponse) updates) => super.copyWith((message) => updates(message as TransmitFCMResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransmitFCMResponse create() => TransmitFCMResponse._();
  TransmitFCMResponse createEmptyInstance() => create();
  static $pb.PbList<TransmitFCMResponse> createRepeated() => $pb.PbList<TransmitFCMResponse>();
  @$core.pragma('dart2js:noInline')
  static TransmitFCMResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransmitFCMResponse>(create);
  static TransmitFCMResponse _defaultInstance;

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

