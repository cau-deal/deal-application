///
//  Generated code. Do not modify.
//  source: MissionService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MissionState extends $pb.ProtobufEnum {
  static const MissionState UNKNOWN_MISSION_STATE = MissionState._(0, 'UNKNOWN_MISSION_STATE');
  static const MissionState DURING_MISSION = MissionState._(1, 'DURING_MISSION');
  static const MissionState SOLD_OUT = MissionState._(2, 'SOLD_OUT');
  static const MissionState WATING_CONFIRM_PURCHASE = MissionState._(3, 'WATING_CONFIRM_PURCHASE');
  static const MissionState COMPLETE_MISSION = MissionState._(4, 'COMPLETE_MISSION');

  static const $core.List<MissionState> values = <MissionState> [
    UNKNOWN_MISSION_STATE,
    DURING_MISSION,
    SOLD_OUT,
    WATING_CONFIRM_PURCHASE,
    COMPLETE_MISSION,
  ];

  static final $core.Map<$core.int, MissionState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MissionState valueOf($core.int value) => _byValue[value];

  const MissionState._($core.int v, $core.String n) : super(v, n);
}

class MissionType extends $pb.ProtobufEnum {
  static const MissionType UNKNOWN_MISSION_TYPE = MissionType._(0, 'UNKNOWN_MISSION_TYPE');
  static const MissionType ALL_MISSION_TYPE = MissionType._(1, 'ALL_MISSION_TYPE');
  static const MissionType COLLECT_MISSION_TYPE = MissionType._(2, 'COLLECT_MISSION_TYPE');
  static const MissionType PROCESS_MISSION_TYPE = MissionType._(3, 'PROCESS_MISSION_TYPE');

  static const $core.List<MissionType> values = <MissionType> [
    UNKNOWN_MISSION_TYPE,
    ALL_MISSION_TYPE,
    COLLECT_MISSION_TYPE,
    PROCESS_MISSION_TYPE,
  ];

  static final $core.Map<$core.int, MissionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MissionType valueOf($core.int value) => _byValue[value];

  const MissionType._($core.int v, $core.String n) : super(v, n);
}

class RegistMissionResult extends $pb.ProtobufEnum {
  static const RegistMissionResult UNKNOWN_REGIST_MISSION_RESULT = RegistMissionResult._(0, 'UNKNOWN_REGIST_MISSION_RESULT');
  static const RegistMissionResult SUCCESS_REGIST_MISSION_RESULT = RegistMissionResult._(1, 'SUCCESS_REGIST_MISSION_RESULT');
  static const RegistMissionResult FAIL_REGIST_MISSION_RESULT = RegistMissionResult._(2, 'FAIL_REGIST_MISSION_RESULT');

  static const $core.List<RegistMissionResult> values = <RegistMissionResult> [
    UNKNOWN_REGIST_MISSION_RESULT,
    SUCCESS_REGIST_MISSION_RESULT,
    FAIL_REGIST_MISSION_RESULT,
  ];

  static final $core.Map<$core.int, RegistMissionResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RegistMissionResult valueOf($core.int value) => _byValue[value];

  const RegistMissionResult._($core.int v, $core.String n) : super(v, n);
}

class SearchMissionResult extends $pb.ProtobufEnum {
  static const SearchMissionResult UNKNOWN_SEARCH_MISSION_RESULT = SearchMissionResult._(0, 'UNKNOWN_SEARCH_MISSION_RESULT');
  static const SearchMissionResult SUCCESS_SEARCH_MISSION_RESULT = SearchMissionResult._(1, 'SUCCESS_SEARCH_MISSION_RESULT');
  static const SearchMissionResult FAIL_SEARCH_MISSION_RESULT = SearchMissionResult._(2, 'FAIL_SEARCH_MISSION_RESULT');

  static const $core.List<SearchMissionResult> values = <SearchMissionResult> [
    UNKNOWN_SEARCH_MISSION_RESULT,
    SUCCESS_SEARCH_MISSION_RESULT,
    FAIL_SEARCH_MISSION_RESULT,
  ];

  static final $core.Map<$core.int, SearchMissionResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SearchMissionResult valueOf($core.int value) => _byValue[value];

  const SearchMissionResult._($core.int v, $core.String n) : super(v, n);
}

class AssignMissionResult extends $pb.ProtobufEnum {
  static const AssignMissionResult UNKNOWN_ASSIGN_MISSION_RESULT = AssignMissionResult._(0, 'UNKNOWN_ASSIGN_MISSION_RESULT');
  static const AssignMissionResult SUCCESS_ASSIGN_MISSION_RESULT = AssignMissionResult._(1, 'SUCCESS_ASSIGN_MISSION_RESULT');
  static const AssignMissionResult FAIL_ASSIGN_MISSION_RESULT = AssignMissionResult._(2, 'FAIL_ASSIGN_MISSION_RESULT');

  static const $core.List<AssignMissionResult> values = <AssignMissionResult> [
    UNKNOWN_ASSIGN_MISSION_RESULT,
    SUCCESS_ASSIGN_MISSION_RESULT,
    FAIL_ASSIGN_MISSION_RESULT,
  ];

  static final $core.Map<$core.int, AssignMissionResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AssignMissionResult valueOf($core.int value) => _byValue[value];

  const AssignMissionResult._($core.int v, $core.String n) : super(v, n);
}

class SubmitResult extends $pb.ProtobufEnum {
  static const SubmitResult UNKNOWN_SUBMIT_RESULT = SubmitResult._(0, 'UNKNOWN_SUBMIT_RESULT');
  static const SubmitResult SUCCESS_SUBMIT_RESULT = SubmitResult._(1, 'SUCCESS_SUBMIT_RESULT');
  static const SubmitResult FAIL_SUBMIT_RESUlT = SubmitResult._(2, 'FAIL_SUBMIT_RESUlT');

  static const $core.List<SubmitResult> values = <SubmitResult> [
    UNKNOWN_SUBMIT_RESULT,
    SUCCESS_SUBMIT_RESULT,
    FAIL_SUBMIT_RESUlT,
  ];

  static final $core.Map<$core.int, SubmitResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SubmitResult valueOf($core.int value) => _byValue[value];

  const SubmitResult._($core.int v, $core.String n) : super(v, n);
}

class RelevantType extends $pb.ProtobufEnum {
  static const RelevantType UNKNOWN_RELEVANT_TYPE = RelevantType._(0, 'UNKNOWN_RELEVANT_TYPE');
  static const RelevantType ALL_RELEVANT_TYPE = RelevantType._(1, 'ALL_RELEVANT_TYPE');
  static const RelevantType PROCESSING_RELEVANT_TYPE = RelevantType._(2, 'PROCESSING_RELEVANT_TYPE');
  static const RelevantType REGIST_RELEVANT_TYPE = RelevantType._(3, 'REGIST_RELEVANT_TYPE');

  static const $core.List<RelevantType> values = <RelevantType> [
    UNKNOWN_RELEVANT_TYPE,
    ALL_RELEVANT_TYPE,
    PROCESSING_RELEVANT_TYPE,
    REGIST_RELEVANT_TYPE,
  ];

  static final $core.Map<$core.int, RelevantType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RelevantType valueOf($core.int value) => _byValue[value];

  const RelevantType._($core.int v, $core.String n) : super(v, n);
}

class MissionPageMode extends $pb.ProtobufEnum {
  static const MissionPageMode UNKNOWN_MISSION_PAGE_MODE = MissionPageMode._(0, 'UNKNOWN_MISSION_PAGE_MODE');
  static const MissionPageMode INITIALIZE_MISSION_PAGE = MissionPageMode._(1, 'INITIALIZE_MISSION_PAGE');
  static const MissionPageMode FETCH_MISSION_PAGE = MissionPageMode._(2, 'FETCH_MISSION_PAGE');

  static const $core.List<MissionPageMode> values = <MissionPageMode> [
    UNKNOWN_MISSION_PAGE_MODE,
    INITIALIZE_MISSION_PAGE,
    FETCH_MISSION_PAGE,
  ];

  static final $core.Map<$core.int, MissionPageMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MissionPageMode valueOf($core.int value) => _byValue[value];

  const MissionPageMode._($core.int v, $core.String n) : super(v, n);
}

