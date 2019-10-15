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
  static const JWTType UNKNOWN_JWT_TYPE = JWTType._(0, 'UNKNOWN_JWT_TYPE');
  static const JWTType ACCESS = JWTType._(1, 'ACCESS');
  static const JWTType REFRESH = JWTType._(2, 'REFRESH');

  static const $core.List<JWTType> values = <JWTType> [
    UNKNOWN_JWT_TYPE,
    ACCESS,
    REFRESH,
  ];

  static final $core.Map<$core.int, JWTType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static JWTType valueOf($core.int value) => _byValue[value];

  const JWTType._($core.int v, $core.String n) : super(v, n);
}

class IsDuplicationEmail extends $pb.ProtobufEnum {
  static const IsDuplicationEmail UNKNOWN_IS_DUPLICATION_EMAIL = IsDuplicationEmail._(0, 'UNKNOWN_IS_DUPLICATION_EMAIL');
  static const IsDuplicationEmail TRUE_IS_DUPLICATION_EMAIL = IsDuplicationEmail._(1, 'TRUE_IS_DUPLICATION_EMAIL');
  static const IsDuplicationEmail FALSE_IS_DUPLICATION_EMAIL = IsDuplicationEmail._(2, 'FALSE_IS_DUPLICATION_EMAIL');

  static const $core.List<IsDuplicationEmail> values = <IsDuplicationEmail> [
    UNKNOWN_IS_DUPLICATION_EMAIL,
    TRUE_IS_DUPLICATION_EMAIL,
    FALSE_IS_DUPLICATION_EMAIL,
  ];

  static final $core.Map<$core.int, IsDuplicationEmail> _byValue = $pb.ProtobufEnum.initByValue(values);
  static IsDuplicationEmail valueOf($core.int value) => _byValue[value];

  const IsDuplicationEmail._($core.int v, $core.String n) : super(v, n);
}

