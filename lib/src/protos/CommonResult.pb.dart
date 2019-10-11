///
//  Generated code. Do not modify.
//  source: CommonResult.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'CommonResult.pbenum.dart';

export 'CommonResult.pbenum.dart';

class CommonResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CommonResult', createEmptyInstance: create)
    ..e<ResultCode>(1, 'resultCode', $pb.PbFieldType.OE, defaultOrMaker: ResultCode.UNKNOWN_RESULT_CODE, valueOf: ResultCode.valueOf, enumValues: ResultCode.values)
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  CommonResult._() : super();
  factory CommonResult() => create();
  factory CommonResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CommonResult clone() => CommonResult()..mergeFromMessage(this);
  CommonResult copyWith(void Function(CommonResult) updates) => super.copyWith((message) => updates(message as CommonResult));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommonResult create() => CommonResult._();
  CommonResult createEmptyInstance() => create();
  static $pb.PbList<CommonResult> createRepeated() => $pb.PbList<CommonResult>();
  @$core.pragma('dart2js:noInline')
  static CommonResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonResult>(create);
  static CommonResult _defaultInstance;

  @$pb.TagNumber(1)
  ResultCode get resultCode => $_getN(0);
  @$pb.TagNumber(1)
  set resultCode(ResultCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

