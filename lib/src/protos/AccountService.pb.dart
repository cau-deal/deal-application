///
//  Generated code. Do not modify.
//  source: AccountService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'CommonResult.pb.dart' as $1;

import 'AccountService.pbenum.dart';

export 'AccountService.pbenum.dart';

class AccountAuthRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountAuthRequest', createEmptyInstance: create)
    ..aOM<Account>(1, 'account', subBuilder: Account.create)
    ..hasRequiredFields = false
  ;

  AccountAuthRequest._() : super();
  factory AccountAuthRequest() => create();
  factory AccountAuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountAuthRequest clone() => AccountAuthRequest()..mergeFromMessage(this);
  AccountAuthRequest copyWith(void Function(AccountAuthRequest) updates) => super.copyWith((message) => updates(message as AccountAuthRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountAuthRequest create() => AccountAuthRequest._();
  AccountAuthRequest createEmptyInstance() => create();
  static $pb.PbList<AccountAuthRequest> createRepeated() => $pb.PbList<AccountAuthRequest>();
  @$core.pragma('dart2js:noInline')
  static AccountAuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAuthRequest>(create);
  static AccountAuthRequest _defaultInstance;

  @$pb.TagNumber(1)
  Account get account => $_getN(0);
  @$pb.TagNumber(1)
  set account(Account v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  Account ensureAccount() => $_ensure(0);
}

class Account extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Account', createEmptyInstance: create)
    ..aOS(1, 'accountNum')
    ..aOS(2, 'name')
    ..e<BANK>(3, 'bank', $pb.PbFieldType.OE, defaultOrMaker: BANK.UNKNOWN_BANK, valueOf: BANK.valueOf, enumValues: BANK.values)
    ..hasRequiredFields = false
  ;

  Account._() : super();
  factory Account() => create();
  factory Account.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Account.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Account clone() => Account()..mergeFromMessage(this);
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  Account createEmptyInstance() => create();
  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountNum => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountNum($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountNum() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  BANK get bank => $_getN(2);
  @$pb.TagNumber(3)
  set bank(BANK v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBank() => $_has(2);
  @$pb.TagNumber(3)
  void clearBank() => clearField(3);
}

class AccountAuthResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AccountAuthResponse', createEmptyInstance: create)
    ..aOM<$1.CommonResult>(1, 'result', subBuilder: $1.CommonResult.create)
    ..e<AccountAuthResult>(2, 'accountAuthResult', $pb.PbFieldType.OE, defaultOrMaker: AccountAuthResult.UNKNOWN_ACCOUNT_AUTH_RESULT, valueOf: AccountAuthResult.valueOf, enumValues: AccountAuthResult.values)
    ..hasRequiredFields = false
  ;

  AccountAuthResponse._() : super();
  factory AccountAuthResponse() => create();
  factory AccountAuthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAuthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AccountAuthResponse clone() => AccountAuthResponse()..mergeFromMessage(this);
  AccountAuthResponse copyWith(void Function(AccountAuthResponse) updates) => super.copyWith((message) => updates(message as AccountAuthResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountAuthResponse create() => AccountAuthResponse._();
  AccountAuthResponse createEmptyInstance() => create();
  static $pb.PbList<AccountAuthResponse> createRepeated() => $pb.PbList<AccountAuthResponse>();
  @$core.pragma('dart2js:noInline')
  static AccountAuthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAuthResponse>(create);
  static AccountAuthResponse _defaultInstance;

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

  @$pb.TagNumber(2)
  AccountAuthResult get accountAuthResult => $_getN(1);
  @$pb.TagNumber(2)
  set accountAuthResult(AccountAuthResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountAuthResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountAuthResult() => clearField(2);
}

