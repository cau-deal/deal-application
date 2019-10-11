///
//  Generated code. Do not modify.
//  source: PointService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PointAlterReason extends $pb.ProtobufEnum {
  static const PointAlterReason UNKNOWN_PointPlusReason = PointAlterReason._(0, 'UNKNOWN_PointPlusReason');
  static const PointAlterReason DEPOSIT = PointAlterReason._(1, 'DEPOSIT');
  static const PointAlterReason WITHDRAW = PointAlterReason._(2, 'WITHDRAW');
  static const PointAlterReason COMPLETE_MISSION = PointAlterReason._(3, 'COMPLETE_MISSION');
  static const PointAlterReason REQUSET_MISSION = PointAlterReason._(4, 'REQUSET_MISSION');
  static const PointAlterReason PLUS_EVENT = PointAlterReason._(5, 'PLUS_EVENT');
  static const PointAlterReason MINUS_EVENT = PointAlterReason._(6, 'MINUS_EVENT');

  static const $core.List<PointAlterReason> values = <PointAlterReason> [
    UNKNOWN_PointPlusReason,
    DEPOSIT,
    WITHDRAW,
    COMPLETE_MISSION,
    REQUSET_MISSION,
    PLUS_EVENT,
    MINUS_EVENT,
  ];

  static final $core.Map<$core.int, PointAlterReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PointAlterReason valueOf($core.int value) => _byValue[value];

  const PointAlterReason._($core.int v, $core.String n) : super(v, n);
}

class DepositType extends $pb.ProtobufEnum {
  static const DepositType UNKNOWN_DEPOSIT_TYPE = DepositType._(0, 'UNKNOWN_DEPOSIT_TYPE');
  static const DepositType DEPOSIT_WITHOUT_BANKBOOK = DepositType._(1, 'DEPOSIT_WITHOUT_BANKBOOK');
  static const DepositType KAKAO_PAY = DepositType._(2, 'KAKAO_PAY');

  static const $core.List<DepositType> values = <DepositType> [
    UNKNOWN_DEPOSIT_TYPE,
    DEPOSIT_WITHOUT_BANKBOOK,
    KAKAO_PAY,
  ];

  static final $core.Map<$core.int, DepositType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DepositType valueOf($core.int value) => _byValue[value];

  const DepositType._($core.int v, $core.String n) : super(v, n);
}

class DepositResult extends $pb.ProtobufEnum {
  static const DepositResult UNKNOWN_DEPOSIT_RESULT = DepositResult._(0, 'UNKNOWN_DEPOSIT_RESULT');
  static const DepositResult SUCCESS_DEPOSIT_RESULT = DepositResult._(1, 'SUCCESS_DEPOSIT_RESULT');
  static const DepositResult FAIL_DEPOSIT_RESULT = DepositResult._(2, 'FAIL_DEPOSIT_RESULT');

  static const $core.List<DepositResult> values = <DepositResult> [
    UNKNOWN_DEPOSIT_RESULT,
    SUCCESS_DEPOSIT_RESULT,
    FAIL_DEPOSIT_RESULT,
  ];

  static final $core.Map<$core.int, DepositResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DepositResult valueOf($core.int value) => _byValue[value];

  const DepositResult._($core.int v, $core.String n) : super(v, n);
}

class WithdrawResult extends $pb.ProtobufEnum {
  static const WithdrawResult UNKNOWN_WITHDRAW_RESUTL = WithdrawResult._(0, 'UNKNOWN_WITHDRAW_RESUTL');
  static const WithdrawResult SUCCESS_WITHDRAW_RESULT = WithdrawResult._(1, 'SUCCESS_WITHDRAW_RESULT');
  static const WithdrawResult FAIL_WITHDRAW_RESULT = WithdrawResult._(2, 'FAIL_WITHDRAW_RESULT');

  static const $core.List<WithdrawResult> values = <WithdrawResult> [
    UNKNOWN_WITHDRAW_RESUTL,
    SUCCESS_WITHDRAW_RESULT,
    FAIL_WITHDRAW_RESULT,
  ];

  static final $core.Map<$core.int, WithdrawResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WithdrawResult valueOf($core.int value) => _byValue[value];

  const WithdrawResult._($core.int v, $core.String n) : super(v, n);
}

