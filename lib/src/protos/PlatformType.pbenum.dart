///
//  Generated code. Do not modify.
//  source: PlatformType.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PlatformType extends $pb.ProtobufEnum {
  static const PlatformType UNKNOWN_PLATFORM_TYPE = PlatformType._(0, 'UNKNOWN_PLATFORM_TYPE');
  static const PlatformType ANDROID = PlatformType._(1, 'ANDROID');
  static const PlatformType IOS = PlatformType._(2, 'IOS');
  static const PlatformType WEB = PlatformType._(3, 'WEB');

  static const $core.List<PlatformType> values = <PlatformType> [
    UNKNOWN_PLATFORM_TYPE,
    ANDROID,
    IOS,
    WEB,
  ];

  static final $core.Map<$core.int, PlatformType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PlatformType valueOf($core.int value) => _byValue[value];

  const PlatformType._($core.int v, $core.String n) : super(v, n);
}

