///
//  Generated code. Do not modify.
//  source: PhoneService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MobileCarrier extends $pb.ProtobufEnum {
  static const MobileCarrier UNKNOWN_MOBILE_CARRIER = MobileCarrier._(0, 'UNKNOWN_MOBILE_CARRIER');
  static const MobileCarrier KTF = MobileCarrier._(1, 'KTF');
  static const MobileCarrier SKT = MobileCarrier._(2, 'SKT');
  static const MobileCarrier LGU = MobileCarrier._(3, 'LGU');
  static const MobileCarrier KTR = MobileCarrier._(4, 'KTR');
  static const MobileCarrier SKR = MobileCarrier._(5, 'SKR');
  static const MobileCarrier LGR = MobileCarrier._(6, 'LGR');

  static const $core.List<MobileCarrier> values = <MobileCarrier> [
    UNKNOWN_MOBILE_CARRIER,
    KTF,
    SKT,
    LGU,
    KTR,
    SKR,
    LGR,
  ];

  static final $core.Map<$core.int, MobileCarrier> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MobileCarrier valueOf($core.int value) => _byValue[value];

  const MobileCarrier._($core.int v, $core.String n) : super(v, n);
}

class Sex extends $pb.ProtobufEnum {
  static const Sex UNKNOWN_SEX = Sex._(0, 'UNKNOWN_SEX');
  static const Sex MALE = Sex._(1, 'MALE');
  static const Sex FEMALE = Sex._(2, 'FEMALE');

  static const $core.List<Sex> values = <Sex> [
    UNKNOWN_SEX,
    MALE,
    FEMALE,
  ];

  static final $core.Map<$core.int, Sex> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Sex valueOf($core.int value) => _byValue[value];

  const Sex._($core.int v, $core.String n) : super(v, n);
}

class PhoneResult extends $pb.ProtobufEnum {
  static const PhoneResult UNKNOWN_PHONE_RESULT = PhoneResult._(0, 'UNKNOWN_PHONE_RESULT');
  static const PhoneResult SUCCESS_PHONE_RESULT = PhoneResult._(1, 'SUCCESS_PHONE_RESULT');
  static const PhoneResult FAIL_PHONE_RESULT = PhoneResult._(2, 'FAIL_PHONE_RESULT');

  static const $core.List<PhoneResult> values = <PhoneResult> [
    UNKNOWN_PHONE_RESULT,
    SUCCESS_PHONE_RESULT,
    FAIL_PHONE_RESULT,
  ];

  static final $core.Map<$core.int, PhoneResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PhoneResult valueOf($core.int value) => _byValue[value];

  const PhoneResult._($core.int v, $core.String n) : super(v, n);
}

