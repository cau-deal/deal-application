///
//  Generated code. Do not modify.
//  source: DealService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class InquiryCategory extends $pb.ProtobufEnum {
  static const InquiryCategory UNKNOWN_INQUIRY_CATEGORY = InquiryCategory._(0, 'UNKNOWN_INQUIRY_CATEGORY');
  static const InquiryCategory POINT = InquiryCategory._(1, 'POINT');
  static const InquiryCategory PROJECT = InquiryCategory._(2, 'PROJECT');
  static const InquiryCategory REGISTER = InquiryCategory._(3, 'REGISTER');
  static const InquiryCategory ETC_INQUIRY = InquiryCategory._(4, 'ETC_INQUIRY');

  static const $core.List<InquiryCategory> values = <InquiryCategory> [
    UNKNOWN_INQUIRY_CATEGORY,
    POINT,
    PROJECT,
    REGISTER,
    ETC_INQUIRY,
  ];

  static final $core.Map<$core.int, InquiryCategory> _byValue = $pb.ProtobufEnum.initByValue(values);
  static InquiryCategory valueOf($core.int value) => _byValue[value];

  const InquiryCategory._($core.int v, $core.String n) : super(v, n);
}

class AccuseCategory extends $pb.ProtobufEnum {
  static const AccuseCategory UNKNOWN_ACCUSE_CATEGORY = AccuseCategory._(0, 'UNKNOWN_ACCUSE_CATEGORY');
  static const AccuseCategory INSULT = AccuseCategory._(1, 'INSULT');
  static const AccuseCategory ADVERTISEMENT = AccuseCategory._(2, 'ADVERTISEMENT');
  static const AccuseCategory ADULT = AccuseCategory._(3, 'ADULT');
  static const AccuseCategory ETC_ACCUSE = AccuseCategory._(4, 'ETC_ACCUSE');

  static const $core.List<AccuseCategory> values = <AccuseCategory> [
    UNKNOWN_ACCUSE_CATEGORY,
    INSULT,
    ADVERTISEMENT,
    ADULT,
    ETC_ACCUSE,
  ];

  static final $core.Map<$core.int, AccuseCategory> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccuseCategory valueOf($core.int value) => _byValue[value];

  const AccuseCategory._($core.int v, $core.String n) : super(v, n);
}

