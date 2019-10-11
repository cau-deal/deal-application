///
//  Generated code. Do not modify.
//  source: NotificationService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'CommonResult.pb.dart' as $1;

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

class PostNoticeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PostNoticeResponse', createEmptyInstance: create)
    ..aOM<$1.CommonResult>(1, 'result', subBuilder: $1.CommonResult.create)
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
  $1.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($1.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $1.CommonResult ensureResult() => $_ensure(0);
}

