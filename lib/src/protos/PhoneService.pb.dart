///
//  Generated code. Do not modify.
//  source: PhoneService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'Date.pb.dart' as $1;
import 'CommonResult.pb.dart' as $2;

import 'PhoneService.pbenum.dart';

export 'PhoneService.pbenum.dart';

class PhoneAuthRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PhoneAuthRequest', createEmptyInstance: create)
    ..aOS(1, 'phoneNum')
    ..aOS(2, 'name')
    ..e<MobileCarrier>(3, 'mobileCarrier', $pb.PbFieldType.OE, defaultOrMaker: MobileCarrier.UNKNOWN_MOBILE_CARRIER, valueOf: MobileCarrier.valueOf, enumValues: MobileCarrier.values)
    ..aOB(4, 'isNative')
    ..aOM<$1.Date>(5, 'birthday', subBuilder: $1.Date.create)
    ..hasRequiredFields = false
  ;

  PhoneAuthRequest._() : super();
  factory PhoneAuthRequest() => create();
  factory PhoneAuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PhoneAuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PhoneAuthRequest clone() => PhoneAuthRequest()..mergeFromMessage(this);
  PhoneAuthRequest copyWith(void Function(PhoneAuthRequest) updates) => super.copyWith((message) => updates(message as PhoneAuthRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PhoneAuthRequest create() => PhoneAuthRequest._();
  PhoneAuthRequest createEmptyInstance() => create();
  static $pb.PbList<PhoneAuthRequest> createRepeated() => $pb.PbList<PhoneAuthRequest>();
  @$core.pragma('dart2js:noInline')
  static PhoneAuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PhoneAuthRequest>(create);
  static PhoneAuthRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get phoneNum => $_getSZ(0);
  @$pb.TagNumber(1)
  set phoneNum($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhoneNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneNum() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  MobileCarrier get mobileCarrier => $_getN(2);
  @$pb.TagNumber(3)
  set mobileCarrier(MobileCarrier v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMobileCarrier() => $_has(2);
  @$pb.TagNumber(3)
  void clearMobileCarrier() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isNative => $_getBF(3);
  @$pb.TagNumber(4)
  set isNative($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsNative() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsNative() => clearField(4);

  @$pb.TagNumber(5)
  $1.Date get birthday => $_getN(4);
  @$pb.TagNumber(5)
  set birthday($1.Date v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBirthday() => $_has(4);
  @$pb.TagNumber(5)
  void clearBirthday() => clearField(5);
  @$pb.TagNumber(5)
  $1.Date ensureBirthday() => $_ensure(4);
}

class PhoneAuthResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PhoneAuthResponse', createEmptyInstance: create)
    ..aOM<$2.CommonResult>(1, 'result', subBuilder: $2.CommonResult.create)
    ..e<PhoneResult>(2, 'phoneResult', $pb.PbFieldType.OE, defaultOrMaker: PhoneResult.UNKNOWN_PHONE_RESULT, valueOf: PhoneResult.valueOf, enumValues: PhoneResult.values)
    ..hasRequiredFields = false
  ;

  PhoneAuthResponse._() : super();
  factory PhoneAuthResponse() => create();
  factory PhoneAuthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PhoneAuthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PhoneAuthResponse clone() => PhoneAuthResponse()..mergeFromMessage(this);
  PhoneAuthResponse copyWith(void Function(PhoneAuthResponse) updates) => super.copyWith((message) => updates(message as PhoneAuthResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PhoneAuthResponse create() => PhoneAuthResponse._();
  PhoneAuthResponse createEmptyInstance() => create();
  static $pb.PbList<PhoneAuthResponse> createRepeated() => $pb.PbList<PhoneAuthResponse>();
  @$core.pragma('dart2js:noInline')
  static PhoneAuthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PhoneAuthResponse>(create);
  static PhoneAuthResponse _defaultInstance;

  @$pb.TagNumber(1)
  $2.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($2.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $2.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  PhoneResult get phoneResult => $_getN(1);
  @$pb.TagNumber(2)
  set phoneResult(PhoneResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhoneResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearPhoneResult() => clearField(2);
}

