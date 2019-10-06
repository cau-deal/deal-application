///
//  Generated code. Do not modify.
//  source: AuthService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AccountType extends $pb.ProtobufEnum {
  static const AccountType UNKNOWN_ACCOUNT_TYPE = AccountType._(0, 'UNKNOWN_ACCOUNT_TYPE');
  static const AccountType EMAIL = AccountType._(1, 'EMAIL');
  static const AccountType GOOGLE = AccountType._(2, 'GOOGLE');

  static const $core.List<AccountType> values = <AccountType> [
    UNKNOWN_ACCOUNT_TYPE,
    EMAIL,
    GOOGLE,
  ];

  static final $core.Map<$core.int, AccountType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountType valueOf($core.int value) => _byValue[value];

  const AccountType._($core.int v, $core.String n) : super(v, n);
}

class JWTType extends $pb.ProtobufEnum {
  static const JWTType UNKNOWN_JWTTYPE = JWTType._(0, 'UNKNOWN_JWTTYPE');
  static const JWTType ACCESS = JWTType._(1, 'ACCESS');
  static const JWTType REFRESH = JWTType._(2, 'REFRESH');

  static const $core.List<JWTType> values = <JWTType> [
    UNKNOWN_JWTTYPE,
    ACCESS,
    REFRESH,
  ];

  static final $core.Map<$core.int, JWTType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static JWTType valueOf($core.int value) => _byValue[value];

  const JWTType._($core.int v, $core.String n) : super(v, n);
}

