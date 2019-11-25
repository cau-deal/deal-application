///
//  Generated code. Do not modify.
//  source: PointService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'Datetime.pb.dart' as $2;
import 'CommonResult.pb.dart' as $3;

import 'PointService.pbenum.dart';

export 'PointService.pbenum.dart';

class LookUpPointHistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LookUpPointHistoryRequest', createEmptyInstance: create)
    ..a<$core.int>(1, 'lastDays', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  LookUpPointHistoryRequest._() : super();
  factory LookUpPointHistoryRequest() => create();
  factory LookUpPointHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LookUpPointHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LookUpPointHistoryRequest clone() => LookUpPointHistoryRequest()..mergeFromMessage(this);
  LookUpPointHistoryRequest copyWith(void Function(LookUpPointHistoryRequest) updates) => super.copyWith((message) => updates(message as LookUpPointHistoryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LookUpPointHistoryRequest create() => LookUpPointHistoryRequest._();
  LookUpPointHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<LookUpPointHistoryRequest> createRepeated() => $pb.PbList<LookUpPointHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static LookUpPointHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LookUpPointHistoryRequest>(create);
  static LookUpPointHistoryRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get lastDays => $_getIZ(0);
  @$pb.TagNumber(1)
  set lastDays($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLastDays() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastDays() => clearField(1);
}

class DepositRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DepositRequest', createEmptyInstance: create)
    ..aOM<Deposit>(1, 'deposit', subBuilder: Deposit.create)
    ..hasRequiredFields = false
  ;

  DepositRequest._() : super();
  factory DepositRequest() => create();
  factory DepositRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DepositRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DepositRequest clone() => DepositRequest()..mergeFromMessage(this);
  DepositRequest copyWith(void Function(DepositRequest) updates) => super.copyWith((message) => updates(message as DepositRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DepositRequest create() => DepositRequest._();
  DepositRequest createEmptyInstance() => create();
  static $pb.PbList<DepositRequest> createRepeated() => $pb.PbList<DepositRequest>();
  @$core.pragma('dart2js:noInline')
  static DepositRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DepositRequest>(create);
  static DepositRequest _defaultInstance;

  @$pb.TagNumber(1)
  Deposit get deposit => $_getN(0);
  @$pb.TagNumber(1)
  set deposit(Deposit v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeposit() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeposit() => clearField(1);
  @$pb.TagNumber(1)
  Deposit ensureDeposit() => $_ensure(0);
}

class WithdrawRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WithdrawRequest', createEmptyInstance: create)
    ..aOM<Withdraw>(1, 'withdraw', subBuilder: Withdraw.create)
    ..hasRequiredFields = false
  ;

  WithdrawRequest._() : super();
  factory WithdrawRequest() => create();
  factory WithdrawRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithdrawRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WithdrawRequest clone() => WithdrawRequest()..mergeFromMessage(this);
  WithdrawRequest copyWith(void Function(WithdrawRequest) updates) => super.copyWith((message) => updates(message as WithdrawRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WithdrawRequest create() => WithdrawRequest._();
  WithdrawRequest createEmptyInstance() => create();
  static $pb.PbList<WithdrawRequest> createRepeated() => $pb.PbList<WithdrawRequest>();
  @$core.pragma('dart2js:noInline')
  static WithdrawRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithdrawRequest>(create);
  static WithdrawRequest _defaultInstance;

  @$pb.TagNumber(1)
  Withdraw get withdraw => $_getN(0);
  @$pb.TagNumber(1)
  set withdraw(Withdraw v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWithdraw() => $_has(0);
  @$pb.TagNumber(1)
  void clearWithdraw() => clearField(1);
  @$pb.TagNumber(1)
  Withdraw ensureWithdraw() => $_ensure(0);
}

class Deposit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Deposit', createEmptyInstance: create)
    ..aInt64(1, 'val')
    ..e<DepositType>(2, 'depositType', $pb.PbFieldType.OE, defaultOrMaker: DepositType.UNKNOWN_DEPOSIT_TYPE, valueOf: DepositType.valueOf, enumValues: DepositType.values)
    ..hasRequiredFields = false
  ;

  Deposit._() : super();
  factory Deposit() => create();
  factory Deposit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Deposit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Deposit clone() => Deposit()..mergeFromMessage(this);
  Deposit copyWith(void Function(Deposit) updates) => super.copyWith((message) => updates(message as Deposit));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Deposit create() => Deposit._();
  Deposit createEmptyInstance() => create();
  static $pb.PbList<Deposit> createRepeated() => $pb.PbList<Deposit>();
  @$core.pragma('dart2js:noInline')
  static Deposit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Deposit>(create);
  static Deposit _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => clearField(1);

  @$pb.TagNumber(2)
  DepositType get depositType => $_getN(1);
  @$pb.TagNumber(2)
  set depositType(DepositType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDepositType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDepositType() => clearField(2);
}

class Withdraw extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Withdraw', createEmptyInstance: create)
    ..aInt64(1, 'val')
    ..hasRequiredFields = false
  ;

  Withdraw._() : super();
  factory Withdraw() => create();
  factory Withdraw.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Withdraw.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Withdraw clone() => Withdraw()..mergeFromMessage(this);
  Withdraw copyWith(void Function(Withdraw) updates) => super.copyWith((message) => updates(message as Withdraw));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Withdraw create() => Withdraw._();
  Withdraw createEmptyInstance() => create();
  static $pb.PbList<Withdraw> createRepeated() => $pb.PbList<Withdraw>();
  @$core.pragma('dart2js:noInline')
  static Withdraw getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Withdraw>(create);
  static Withdraw _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => clearField(1);
}

class PointHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PointHistory', createEmptyInstance: create)
    ..aInt64(1, 'val')
    ..e<PointAlterReason>(2, 'pointAlterReason', $pb.PbFieldType.OE, defaultOrMaker: PointAlterReason.UNKNOWN_POINT_ALTER_REASON, valueOf: PointAlterReason.valueOf, enumValues: PointAlterReason.values)
    ..aOM<$2.Datetime>(3, 'createdAt', subBuilder: $2.Datetime.create)
    ..hasRequiredFields = false
  ;

  PointHistory._() : super();
  factory PointHistory() => create();
  factory PointHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PointHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PointHistory clone() => PointHistory()..mergeFromMessage(this);
  PointHistory copyWith(void Function(PointHistory) updates) => super.copyWith((message) => updates(message as PointHistory));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PointHistory create() => PointHistory._();
  PointHistory createEmptyInstance() => create();
  static $pb.PbList<PointHistory> createRepeated() => $pb.PbList<PointHistory>();
  @$core.pragma('dart2js:noInline')
  static PointHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PointHistory>(create);
  static PointHistory _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get val => $_getI64(0);
  @$pb.TagNumber(1)
  set val($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVal() => $_has(0);
  @$pb.TagNumber(1)
  void clearVal() => clearField(1);

  @$pb.TagNumber(2)
  PointAlterReason get pointAlterReason => $_getN(1);
  @$pb.TagNumber(2)
  set pointAlterReason(PointAlterReason v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPointAlterReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearPointAlterReason() => clearField(2);

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
}

class LookUpBalanceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LookUpBalanceResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..aInt64(2, 'balance')
    ..hasRequiredFields = false
  ;

  LookUpBalanceResponse._() : super();
  factory LookUpBalanceResponse() => create();
  factory LookUpBalanceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LookUpBalanceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LookUpBalanceResponse clone() => LookUpBalanceResponse()..mergeFromMessage(this);
  LookUpBalanceResponse copyWith(void Function(LookUpBalanceResponse) updates) => super.copyWith((message) => updates(message as LookUpBalanceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LookUpBalanceResponse create() => LookUpBalanceResponse._();
  LookUpBalanceResponse createEmptyInstance() => create();
  static $pb.PbList<LookUpBalanceResponse> createRepeated() => $pb.PbList<LookUpBalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static LookUpBalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LookUpBalanceResponse>(create);
  static LookUpBalanceResponse _defaultInstance;

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
  $fixnum.Int64 get balance => $_getI64(1);
  @$pb.TagNumber(2)
  set balance($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalance() => clearField(2);
}

class LookUpPointHistoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LookUpPointHistoryResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..pc<PointHistory>(2, 'pointHistories', $pb.PbFieldType.PM, subBuilder: PointHistory.create)
    ..hasRequiredFields = false
  ;

  LookUpPointHistoryResponse._() : super();
  factory LookUpPointHistoryResponse() => create();
  factory LookUpPointHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LookUpPointHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LookUpPointHistoryResponse clone() => LookUpPointHistoryResponse()..mergeFromMessage(this);
  LookUpPointHistoryResponse copyWith(void Function(LookUpPointHistoryResponse) updates) => super.copyWith((message) => updates(message as LookUpPointHistoryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LookUpPointHistoryResponse create() => LookUpPointHistoryResponse._();
  LookUpPointHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<LookUpPointHistoryResponse> createRepeated() => $pb.PbList<LookUpPointHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static LookUpPointHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LookUpPointHistoryResponse>(create);
  static LookUpPointHistoryResponse _defaultInstance;

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
  $core.List<PointHistory> get pointHistories => $_getList(1);
}

class DepositResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DepositResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..e<DepositResult>(2, 'depositResult', $pb.PbFieldType.OE, defaultOrMaker: DepositResult.UNKNOWN_DEPOSIT_RESULT, valueOf: DepositResult.valueOf, enumValues: DepositResult.values)
    ..aOS(3, 'kakaopayUrl')
    ..hasRequiredFields = false
  ;

  DepositResponse._() : super();
  factory DepositResponse() => create();
  factory DepositResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DepositResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  DepositResponse clone() => DepositResponse()..mergeFromMessage(this);
  DepositResponse copyWith(void Function(DepositResponse) updates) => super.copyWith((message) => updates(message as DepositResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DepositResponse create() => DepositResponse._();
  DepositResponse createEmptyInstance() => create();
  static $pb.PbList<DepositResponse> createRepeated() => $pb.PbList<DepositResponse>();
  @$core.pragma('dart2js:noInline')
  static DepositResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DepositResponse>(create);
  static DepositResponse _defaultInstance;

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
  DepositResult get depositResult => $_getN(1);
  @$pb.TagNumber(2)
  set depositResult(DepositResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDepositResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearDepositResult() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get kakaopayUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set kakaopayUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKakaopayUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearKakaopayUrl() => clearField(3);
}

class WithdrawResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WithdrawResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..e<WithdrawResult>(2, 'withdrawResult', $pb.PbFieldType.OE, defaultOrMaker: WithdrawResult.UNKNOWN_WITHDRAW_RESUTL, valueOf: WithdrawResult.valueOf, enumValues: WithdrawResult.values)
    ..hasRequiredFields = false
  ;

  WithdrawResponse._() : super();
  factory WithdrawResponse() => create();
  factory WithdrawResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WithdrawResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WithdrawResponse clone() => WithdrawResponse()..mergeFromMessage(this);
  WithdrawResponse copyWith(void Function(WithdrawResponse) updates) => super.copyWith((message) => updates(message as WithdrawResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WithdrawResponse create() => WithdrawResponse._();
  WithdrawResponse createEmptyInstance() => create();
  static $pb.PbList<WithdrawResponse> createRepeated() => $pb.PbList<WithdrawResponse>();
  @$core.pragma('dart2js:noInline')
  static WithdrawResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WithdrawResponse>(create);
  static WithdrawResponse _defaultInstance;

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
  WithdrawResult get withdrawResult => $_getN(1);
  @$pb.TagNumber(2)
  set withdrawResult(WithdrawResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWithdrawResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearWithdrawResult() => clearField(2);
}

class LookUpEarnForADayResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LookUpEarnForADayResponse', createEmptyInstance: create)
    ..aOM<$3.CommonResult>(1, 'result', subBuilder: $3.CommonResult.create)
    ..aInt64(2, 'val')
    ..hasRequiredFields = false
  ;

  LookUpEarnForADayResponse._() : super();
  factory LookUpEarnForADayResponse() => create();
  factory LookUpEarnForADayResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LookUpEarnForADayResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LookUpEarnForADayResponse clone() => LookUpEarnForADayResponse()..mergeFromMessage(this);
  LookUpEarnForADayResponse copyWith(void Function(LookUpEarnForADayResponse) updates) => super.copyWith((message) => updates(message as LookUpEarnForADayResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LookUpEarnForADayResponse create() => LookUpEarnForADayResponse._();
  LookUpEarnForADayResponse createEmptyInstance() => create();
  static $pb.PbList<LookUpEarnForADayResponse> createRepeated() => $pb.PbList<LookUpEarnForADayResponse>();
  @$core.pragma('dart2js:noInline')
  static LookUpEarnForADayResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LookUpEarnForADayResponse>(create);
  static LookUpEarnForADayResponse _defaultInstance;

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
  $fixnum.Int64 get val => $_getI64(1);
  @$pb.TagNumber(2)
  set val($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearVal() => clearField(2);
}

