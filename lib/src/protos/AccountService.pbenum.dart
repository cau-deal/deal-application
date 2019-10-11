///
//  Generated code. Do not modify.
//  source: AccountService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class BANK extends $pb.ProtobufEnum {
  static const BANK UNKNOWN_BANK = BANK._(0, 'UNKNOWN_BANK');
  static const BANK NH = BANK._(1, 'NH');
  static const BANK IBK = BANK._(2, 'IBK');
  static const BANK KB = BANK._(3, 'KB');
  static const BANK KAKAO = BANK._(4, 'KAKAO');
  static const BANK WOORI = BANK._(5, 'WOORI');

  static const $core.List<BANK> values = <BANK> [
    UNKNOWN_BANK,
    NH,
    IBK,
    KB,
    KAKAO,
    WOORI,
  ];

  static final $core.Map<$core.int, BANK> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BANK valueOf($core.int value) => _byValue[value];

  const BANK._($core.int v, $core.String n) : super(v, n);
}

class AccountAuthResult extends $pb.ProtobufEnum {
  static const AccountAuthResult UNKNOWN_ACCOUNT_AUTH_RESULT = AccountAuthResult._(0, 'UNKNOWN_ACCOUNT_AUTH_RESULT');
  static const AccountAuthResult SUCCESS_ACCOUNT_AUTH_RESULT = AccountAuthResult._(1, 'SUCCESS_ACCOUNT_AUTH_RESULT');
  static const AccountAuthResult FAIL_ACCOUNT_AUTH_RESULT = AccountAuthResult._(2, 'FAIL_ACCOUNT_AUTH_RESULT');

  static const $core.List<AccountAuthResult> values = <AccountAuthResult> [
    UNKNOWN_ACCOUNT_AUTH_RESULT,
    SUCCESS_ACCOUNT_AUTH_RESULT,
    FAIL_ACCOUNT_AUTH_RESULT,
  ];

  static final $core.Map<$core.int, AccountAuthResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountAuthResult valueOf($core.int value) => _byValue[value];

  const AccountAuthResult._($core.int v, $core.String n) : super(v, n);
}

