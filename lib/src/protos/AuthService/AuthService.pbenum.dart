///
//  Generated code. Do not modify.
//  source: AuthService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PlatformType extends $pb.ProtobufEnum {
  static const PlatformType UNKNOWN = PlatformType._(0, 'UNKNOWN');
  static const PlatformType ANDROID = PlatformType._(1, 'ANDROID');
  static const PlatformType IOS = PlatformType._(2, 'IOS');
  static const PlatformType WEB = PlatformType._(3, 'WEB');

  static const $core.List<PlatformType> values = <PlatformType> [
    UNKNOWN,
    ANDROID,
    IOS,
    WEB,
  ];

  static final $core.Map<$core.int, PlatformType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PlatformType valueOf($core.int value) => _byValue[value];

  const PlatformType._($core.int v, $core.String n) : super(v, n);
}

class AccountType extends $pb.ProtobufEnum {
  static const AccountType EMAIL = AccountType._(0, 'EMAIL');
  static const AccountType GOOGLE = AccountType._(1, 'GOOGLE');

  static const $core.List<AccountType> values = <AccountType> [
    EMAIL,
    GOOGLE,
  ];

  static final $core.Map<$core.int, AccountType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountType valueOf($core.int value) => _byValue[value];

  const AccountType._($core.int v, $core.String n) : super(v, n);
}

class JWTType extends $pb.ProtobufEnum {
  static const JWTType ACCESS = JWTType._(0, 'ACCESS');
  static const JWTType REFRESH = JWTType._(1, 'REFRESH');

  static const $core.List<JWTType> values = <JWTType> [
    ACCESS,
    REFRESH,
  ];

  static final $core.Map<$core.int, JWTType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static JWTType valueOf($core.int value) => _byValue[value];

  const JWTType._($core.int v, $core.String n) : super(v, n);
}

class ResultCode extends $pb.ProtobufEnum {
  static const ResultCode SUCCESS = ResultCode._(0, 'SUCCESS');
  static const ResultCode ERROR = ResultCode._(1, 'ERROR');

  static const $core.List<ResultCode> values = <ResultCode> [
    SUCCESS,
    ERROR,
  ];

  static final $core.Map<$core.int, ResultCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResultCode valueOf($core.int value) => _byValue[value];

  const ResultCode._($core.int v, $core.String n) : super(v, n);
}

