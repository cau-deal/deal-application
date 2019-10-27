///
//  Generated code. Do not modify.
//  source: NotificationService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class IsReadPushType extends $pb.ProtobufEnum {
  static const IsReadPushType UNKNOWN_IS_READ_PUSH_TYPE = IsReadPushType._(0, 'UNKNOWN_IS_READ_PUSH_TYPE');
  static const IsReadPushType NOT_READ_IS_READ_PUSH_TYPE = IsReadPushType._(1, 'NOT_READ_IS_READ_PUSH_TYPE');
  static const IsReadPushType READ_IS_READ_PUSH_TYPE = IsReadPushType._(2, 'READ_IS_READ_PUSH_TYPE');
  static const IsReadPushType ALL_IS_READ_PUSH_TYPE = IsReadPushType._(3, 'ALL_IS_READ_PUSH_TYPE');

  static const $core.List<IsReadPushType> values = <IsReadPushType> [
    UNKNOWN_IS_READ_PUSH_TYPE,
    NOT_READ_IS_READ_PUSH_TYPE,
    READ_IS_READ_PUSH_TYPE,
    ALL_IS_READ_PUSH_TYPE,
  ];

  static final $core.Map<$core.int, IsReadPushType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static IsReadPushType valueOf($core.int value) => _byValue[value];

  const IsReadPushType._($core.int v, $core.String n) : super(v, n);
}

