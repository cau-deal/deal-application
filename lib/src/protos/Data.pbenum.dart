///
//  Generated code. Do not modify.
//  source: Data.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class DataType extends $pb.ProtobufEnum {
  static const DataType UNKNOWN_DATA_TYPE = DataType._(0, 'UNKNOWN_DATA_TYPE');
  static const DataType IMAGE = DataType._(1, 'IMAGE');
  static const DataType SOUND = DataType._(2, 'SOUND');
  static const DataType SURVEY = DataType._(3, 'SURVEY');

  static const $core.List<DataType> values = <DataType> [
    UNKNOWN_DATA_TYPE,
    IMAGE,
    SOUND,
    SURVEY,
  ];

  static final $core.Map<$core.int, DataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataType valueOf($core.int value) => _byValue[value];

  const DataType._($core.int v, $core.String n) : super(v, n);
}

class DataState extends $pb.ProtobufEnum {
  static const DataState UNKNOWN_DATA_STATE = DataState._(0, 'UNKNOWN_DATA_STATE');
  static const DataState WAITING__PROCESS = DataState._(1, 'WAITING__PROCESS');
  static const DataState DURING_PROCESS = DataState._(2, 'DURING_PROCESS');
  static const DataState WAITING_VERIFICATION = DataState._(3, 'WAITING_VERIFICATION');
  static const DataState DURING_VERIFICATION = DataState._(4, 'DURING_VERIFICATION');
  static const DataState COMPLETE_VERIFICATION = DataState._(5, 'COMPLETE_VERIFICATION');
  static const DataState RETURN_VERIFICATION = DataState._(6, 'RETURN_VERIFICATION');
  static const DataState FAIL_DATA_STATE = DataState._(7, 'FAIL_DATA_STATE');

  static const $core.List<DataState> values = <DataState> [
    UNKNOWN_DATA_STATE,
    WAITING__PROCESS,
    DURING_PROCESS,
    WAITING_VERIFICATION,
    DURING_VERIFICATION,
    COMPLETE_VERIFICATION,
    RETURN_VERIFICATION,
    FAIL_DATA_STATE,
  ];

  static final $core.Map<$core.int, DataState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataState valueOf($core.int value) => _byValue[value];

  const DataState._($core.int v, $core.String n) : super(v, n);
}

class MissionExplanationImageType extends $pb.ProtobufEnum {
  static const MissionExplanationImageType UNKNOWN_MISSION_EXPLANATION_IMAGE_TYPE = MissionExplanationImageType._(0, 'UNKNOWN_MISSION_EXPLANATION_IMAGE_TYPE');
  static const MissionExplanationImageType THUMBNAIL_MISSION_EXPLANATION_IMAGE_TYPE = MissionExplanationImageType._(1, 'THUMBNAIL_MISSION_EXPLANATION_IMAGE_TYPE');
  static const MissionExplanationImageType BACKGROUND_MISSION_EXPLANATION_IMAGE_TYPE = MissionExplanationImageType._(2, 'BACKGROUND_MISSION_EXPLANATION_IMAGE_TYPE');
  static const MissionExplanationImageType MAIN_TEXT_MISSION_EXPLANATION_IMAGE_TYPE = MissionExplanationImageType._(3, 'MAIN_TEXT_MISSION_EXPLANATION_IMAGE_TYPE');

  static const $core.List<MissionExplanationImageType> values = <MissionExplanationImageType> [
    UNKNOWN_MISSION_EXPLANATION_IMAGE_TYPE,
    THUMBNAIL_MISSION_EXPLANATION_IMAGE_TYPE,
    BACKGROUND_MISSION_EXPLANATION_IMAGE_TYPE,
    MAIN_TEXT_MISSION_EXPLANATION_IMAGE_TYPE,
  ];

  static final $core.Map<$core.int, MissionExplanationImageType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MissionExplanationImageType valueOf($core.int value) => _byValue[value];

  const MissionExplanationImageType._($core.int v, $core.String n) : super(v, n);
}

