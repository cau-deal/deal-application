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
  static const MissionState WAITING_REGISTER = MissionState._(5, 'WAITING_REGISTER');
  static const MissionState RETURNED_MISSION = MissionState._(6, 'RETURNED_MISSION');

  static const $core.List<MissionState> values = <MissionState> [
    UNKNOWN_MISSION_STATE,
    DURING_MISSION,
    SOLD_OUT,
    WATING_CONFIRM_PURCHASE,
    COMPLETE_MISSION,
    WAITING_REGISTER,
    RETURNED_MISSION,
  ];

  static final $core.Map<$core.int, MissionState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MissionState valueOf($core.int value) => _byValue[value];

  const MissionState._($core.int v, $core.String n) : super(v, n);
}

class ConductMissionState extends $pb.ProtobufEnum {
  static const ConductMissionState UNKNOWN_CONDUCT_MISSION_STATE = ConductMissionState._(0, 'UNKNOWN_CONDUCT_MISSION_STATE');
  static const ConductMissionState DURING_MISSION_CONDUCT_MISSION_STATE = ConductMissionState._(1, 'DURING_MISSION_CONDUCT_MISSION_STATE');
  static const ConductMissionState WAITING_VERIFICATION_CONDUCT_MISSION_STATE = ConductMissionState._(2, 'WAITING_VERIFICATION_CONDUCT_MISSION_STATE');
  static const ConductMissionState DURING_VERIFICATION_CONDUCT_MISSION_STATE = ConductMissionState._(3, 'DURING_VERIFICATION_CONDUCT_MISSION_STATE');
  static const ConductMissionState COMPLETE_VERIFICATION_CONDUCT_MISSION_STATE = ConductMissionState._(4, 'COMPLETE_VERIFICATION_CONDUCT_MISSION_STATE');
  static const ConductMissionState RETURN_VERIFICATION_CONDUCT_MISSION_STATE = ConductMissionState._(5, 'RETURN_VERIFICATION_CONDUCT_MISSION_STATE');
  static const ConductMissionState FAIL_MISSION_CONDUCT_MISSION_STATE = ConductMissionState._(6, 'FAIL_MISSION_CONDUCT_MISSION_STATE');
  static const ConductMissionState INIT_CONDUCT_MISSION_STATE = ConductMissionState._(7, 'INIT_CONDUCT_MISSION_STATE');
  static const ConductMissionState TRY_SELF_CONDUCT_MISSION_STATE = ConductMissionState._(8, 'TRY_SELF_CONDUCT_MISSION_STATE');

  static const $core.List<ConductMissionState> values = <ConductMissionState> [
    UNKNOWN_CONDUCT_MISSION_STATE,
    DURING_MISSION_CONDUCT_MISSION_STATE,
    WAITING_VERIFICATION_CONDUCT_MISSION_STATE,
    DURING_VERIFICATION_CONDUCT_MISSION_STATE,
    COMPLETE_VERIFICATION_CONDUCT_MISSION_STATE,
    RETURN_VERIFICATION_CONDUCT_MISSION_STATE,
    FAIL_MISSION_CONDUCT_MISSION_STATE,
    INIT_CONDUCT_MISSION_STATE,
    TRY_SELF_CONDUCT_MISSION_STATE,
  ];

  static final $core.Map<$core.int, ConductMissionState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConductMissionState valueOf($core.int value) => _byValue[value];

  const ConductMissionState._($core.int v, $core.String n) : super(v, n);
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

class RegisterMissionResult extends $pb.ProtobufEnum {
  static const RegisterMissionResult UNKNOWN_REGISTER_MISSION_RESULT = RegisterMissionResult._(0, 'UNKNOWN_REGISTER_MISSION_RESULT');
  static const RegisterMissionResult SUCCESS_REGISTER_MISSION_RESULT = RegisterMissionResult._(1, 'SUCCESS_REGISTER_MISSION_RESULT');
  static const RegisterMissionResult FAIL_REGISTER_MISSION_RESULT = RegisterMissionResult._(2, 'FAIL_REGISTER_MISSION_RESULT');

  static const $core.List<RegisterMissionResult> values = <RegisterMissionResult> [
    UNKNOWN_REGISTER_MISSION_RESULT,
    SUCCESS_REGISTER_MISSION_RESULT,
    FAIL_REGISTER_MISSION_RESULT,
  ];

  static final $core.Map<$core.int, RegisterMissionResult> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RegisterMissionResult valueOf($core.int value) => _byValue[value];

  const RegisterMissionResult._($core.int v, $core.String n) : super(v, n);
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

class DecidePurchaseDistractor extends $pb.ProtobufEnum {
  static const DecidePurchaseDistractor UNKNOWN_DECIDE_PURCHASE_DISTRACTOR = DecidePurchaseDistractor._(0, 'UNKNOWN_DECIDE_PURCHASE_DISTRACTOR');
  static const DecidePurchaseDistractor DECIDE_OK = DecidePurchaseDistractor._(1, 'DECIDE_OK');
  static const DecidePurchaseDistractor DECIDE_RETURN = DecidePurchaseDistractor._(2, 'DECIDE_RETURN');

  static const $core.List<DecidePurchaseDistractor> values = <DecidePurchaseDistractor> [
    UNKNOWN_DECIDE_PURCHASE_DISTRACTOR,
    DECIDE_OK,
    DECIDE_RETURN,
  ];

  static final $core.Map<$core.int, DecidePurchaseDistractor> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DecidePurchaseDistractor valueOf($core.int value) => _byValue[value];

  const DecidePurchaseDistractor._($core.int v, $core.String n) : super(v, n);
}

class DecideValidation extends $pb.ProtobufEnum {
  static const DecideValidation UNKNOWN_DECIDE_VALIDATION = DecideValidation._(0, 'UNKNOWN_DECIDE_VALIDATION');
  static const DecideValidation DECIDE_VALIDATION_OK = DecideValidation._(1, 'DECIDE_VALIDATION_OK');
  static const DecideValidation DECIDE_VALIDATION_RETURN = DecideValidation._(2, 'DECIDE_VALIDATION_RETURN');

  static const $core.List<DecideValidation> values = <DecideValidation> [
    UNKNOWN_DECIDE_VALIDATION,
    DECIDE_VALIDATION_OK,
    DECIDE_VALIDATION_RETURN,
  ];

  static final $core.Map<$core.int, DecideValidation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DecideValidation valueOf($core.int value) => _byValue[value];

  const DecideValidation._($core.int v, $core.String n) : super(v, n);
}

