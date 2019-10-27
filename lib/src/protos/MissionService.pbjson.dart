///
//  Generated code. Do not modify.
//  source: MissionService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const MissionState$json = const {
  '1': 'MissionState',
  '2': const [
    const {'1': 'UNKNOWN_MISSION_STATE', '2': 0},
    const {'1': 'DURING_MISSION', '2': 1},
    const {'1': 'SOLD_OUT', '2': 2},
    const {'1': 'WATING_CONFIRM_PURCHASE', '2': 3},
    const {'1': 'COMPLETE_MISSION', '2': 4},
    const {'1': 'WATRING_REGISTER', '2': 5},
  ],
};

const ConductMissionState$json = const {
  '1': 'ConductMissionState',
  '2': const [
    const {'1': 'UNKNOWN_CONDUCT_MISSION_STATE', '2': 0},
    const {'1': 'DURING_MISSION_CONDUCT_MISSION_STATE', '2': 1},
    const {'1': 'WAITING_VERIFICATION_CONDUCT_MISSION_STATE', '2': 2},
    const {'1': 'DURING_VERIFICATION_CONDUCT_MISSION_STATE', '2': 3},
    const {'1': 'COMPLETE_VERIFICATION_CONDUCT_MISSION_STATE', '2': 4},
    const {'1': 'RETURN_VERIFICATION_CONDUCT_MISSION_STATE', '2': 5},
    const {'1': 'FAIL_MISSION_CONDUCT_MISSION_STATE', '2': 6},
  ],
};

const MissionType$json = const {
  '1': 'MissionType',
  '2': const [
    const {'1': 'UNKNOWN_MISSION_TYPE', '2': 0},
    const {'1': 'ALL_MISSION_TYPE', '2': 1},
    const {'1': 'COLLECT_MISSION_TYPE', '2': 2},
    const {'1': 'PROCESS_MISSION_TYPE', '2': 3},
  ],
};

const RegisterMissionResult$json = const {
  '1': 'RegisterMissionResult',
  '2': const [
    const {'1': 'UNKNOWN_REGISTER_MISSION_RESULT', '2': 0},
    const {'1': 'SUCCESS_REGISTER_MISSION_RESULT', '2': 1},
    const {'1': 'FAIL_REGISTER_MISSION_RESULT', '2': 2},
  ],
};

const SearchMissionResult$json = const {
  '1': 'SearchMissionResult',
  '2': const [
    const {'1': 'UNKNOWN_SEARCH_MISSION_RESULT', '2': 0},
    const {'1': 'SUCCESS_SEARCH_MISSION_RESULT', '2': 1},
    const {'1': 'FAIL_SEARCH_MISSION_RESULT', '2': 2},
  ],
};

const AssignMissionResult$json = const {
  '1': 'AssignMissionResult',
  '2': const [
    const {'1': 'UNKNOWN_ASSIGN_MISSION_RESULT', '2': 0},
    const {'1': 'SUCCESS_ASSIGN_MISSION_RESULT', '2': 1},
    const {'1': 'FAIL_ASSIGN_MISSION_RESULT', '2': 2},
  ],
};

const SubmitResult$json = const {
  '1': 'SubmitResult',
  '2': const [
    const {'1': 'UNKNOWN_SUBMIT_RESULT', '2': 0},
    const {'1': 'SUCCESS_SUBMIT_RESULT', '2': 1},
    const {'1': 'FAIL_SUBMIT_RESUlT', '2': 2},
  ],
};

const MissionPageMode$json = const {
  '1': 'MissionPageMode',
  '2': const [
    const {'1': 'UNKNOWN_MISSION_PAGE_MODE', '2': 0},
    const {'1': 'INITIALIZE_MISSION_PAGE', '2': 1},
    const {'1': 'FETCH_MISSION_PAGE', '2': 2},
  ],
};

const RegisterMissionRequest$json = const {
  '1': 'RegisterMissionRequest',
  '2': const [
    const {'1': 'mission', '3': 1, '4': 1, '5': 11, '6': '.Mission', '10': 'mission'},
  ],
};

const SearchMissionRequest$json = const {
  '1': 'SearchMissionRequest',
  '2': const [
    const {'1': 'mission_type', '3': 1, '4': 1, '5': 14, '6': '.MissionType', '10': 'missionType'},
    const {'1': 'keyword', '3': 2, '4': 1, '5': 9, '10': 'keyword'},
    const {'1': 'mission_page', '3': 3, '4': 1, '5': 11, '6': '.MissionPage', '10': 'missionPage'},
  ],
};

const MissionIdRequest$json = const {
  '1': 'MissionIdRequest',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
  ],
};

const SearchMissionRelevantMeRequest$json = const {
  '1': 'SearchMissionRelevantMeRequest',
  '2': const [
    const {'1': 'mission_page', '3': 1, '4': 1, '5': 11, '6': '.MissionPage', '10': 'missionPage'},
  ],
};

const SubmitCollectMissionOutputRequest$json = const {
  '1': 'SubmitCollectMissionOutputRequest',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'datas', '3': 2, '4': 3, '5': 11, '6': '.Data', '10': 'datas'},
  ],
};

const SubmitProcessMissionOutputRequest$json = const {
  '1': 'SubmitProcessMissionOutputRequest',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'datas', '3': 2, '4': 3, '5': 11, '6': '.ProcessedImageData', '10': 'datas'},
  ],
};

const Mission$json = const {
  '1': 'Mission',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'contents', '3': 3, '4': 1, '5': 9, '10': 'contents'},
    const {'1': 'mission_type', '3': 4, '4': 1, '5': 14, '6': '.MissionType', '10': 'missionType'},
    const {'1': 'data_type', '3': 5, '4': 1, '5': 14, '6': '.DataType', '10': 'dataType'},
    const {'1': 'unit_package', '3': 6, '4': 1, '5': 5, '10': 'unitPackage'},
    const {'1': 'price_of_package', '3': 7, '4': 1, '5': 5, '10': 'priceOfPackage'},
    const {'1': 'deadline', '3': 8, '4': 1, '5': 11, '6': '.Datetime', '10': 'deadline'},
    const {'1': 'order_package_quantity', '3': 9, '4': 1, '5': 5, '10': 'orderPackageQuantity'},
    const {'1': 'summary', '3': 10, '4': 1, '5': 9, '10': 'summary'},
    const {'1': 'contact_clause', '3': 11, '4': 1, '5': 9, '10': 'contactClause'},
    const {'1': 'specification', '3': 12, '4': 1, '5': 9, '10': 'specification'},
    const {'1': 'mission_explanation_images', '3': 13, '4': 3, '5': 11, '6': '.MissionExplanationImage', '10': 'missionExplanationImages'},
    const {'1': 'mission_state', '3': 14, '4': 1, '5': 14, '6': '.MissionState', '10': 'missionState'},
    const {'1': 'created_at', '3': 15, '4': 1, '5': 11, '6': '.Datetime', '10': 'createdAt'},
    const {'1': 'beginning', '3': 16, '4': 1, '5': 11, '6': '.Datetime', '10': 'beginning'},
  ],
};

const MissionProto$json = const {
  '1': 'MissionProto',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'mission_type', '3': 4, '4': 1, '5': 14, '6': '.MissionType', '10': 'missionType'},
    const {'1': 'price_of_package', '3': 7, '4': 1, '5': 5, '10': 'priceOfPackage'},
    const {'1': 'deadline', '3': 8, '4': 1, '5': 11, '6': '.Datetime', '10': 'deadline'},
    const {'1': 'summary', '3': 10, '4': 1, '5': 9, '10': 'summary'},
    const {'1': 'mission_state', '3': 14, '4': 1, '5': 14, '6': '.MissionState', '10': 'missionState'},
    const {'1': 'created_at', '3': 15, '4': 1, '5': 11, '6': '.Datetime', '10': 'createdAt'},
    const {'1': 'thumbnail_url', '3': 16, '4': 1, '5': 9, '10': 'thumbnailUrl'},
    const {'1': 'beginning', '3': 17, '4': 1, '5': 11, '6': '.Datetime', '10': 'beginning'},
  ],
};

const ConductMissionProto$json = const {
  '1': 'ConductMissionProto',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'mission_type', '3': 4, '4': 1, '5': 14, '6': '.MissionType', '10': 'missionType'},
    const {'1': 'price_of_package', '3': 7, '4': 1, '5': 5, '10': 'priceOfPackage'},
    const {'1': 'deadline', '3': 8, '4': 1, '5': 11, '6': '.Datetime', '10': 'deadline'},
    const {'1': 'summary', '3': 10, '4': 1, '5': 9, '10': 'summary'},
    const {'1': 'conduct_mission_state', '3': 18, '4': 1, '5': 14, '6': '.ConductMissionState', '10': 'conductMissionState'},
    const {'1': 'created_at', '3': 15, '4': 1, '5': 11, '6': '.Datetime', '10': 'createdAt'},
    const {'1': 'thumbnail_url', '3': 16, '4': 1, '5': 9, '10': 'thumbnailUrl'},
    const {'1': 'beginning', '3': 17, '4': 1, '5': 11, '6': '.Datetime', '10': 'beginning'},
  ],
};

const MissionPage$json = const {
  '1': 'MissionPage',
  '2': const [
    const {'1': 'mission_page_mode', '3': 1, '4': 1, '5': 14, '6': '.MissionPageMode', '10': 'missionPageMode'},
    const {'1': '_offset', '3': 2, '4': 1, '5': 5, '10': 'Offset'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 5, '10': 'amount'},
  ],
};

const RegisterMissionResponse$json = const {
  '1': 'RegisterMissionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'register_mission_result', '3': 2, '4': 1, '5': 14, '6': '.RegisterMissionResult', '10': 'registerMissionResult'},
  ],
};

const SearchMissionResponse$json = const {
  '1': 'SearchMissionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'search_mission_result', '3': 2, '4': 1, '5': 14, '6': '.SearchMissionResult', '10': 'searchMissionResult'},
    const {'1': 'mission_protoes', '3': 3, '4': 3, '5': 11, '6': '.MissionProto', '10': 'missionProtoes'},
  ],
};

const SearchMissionWithIdResponse$json = const {
  '1': 'SearchMissionWithIdResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'search_mission_result', '3': 2, '4': 1, '5': 14, '6': '.SearchMissionResult', '10': 'searchMissionResult'},
    const {'1': 'mission', '3': 3, '4': 1, '5': 11, '6': '.Mission', '10': 'mission'},
  ],
};

const SearchRegisterMissionRelevantMeResponse$json = const {
  '1': 'SearchRegisterMissionRelevantMeResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'search_mission_result', '3': 2, '4': 1, '5': 14, '6': '.SearchMissionResult', '10': 'searchMissionResult'},
    const {'1': 'mission_protoes', '3': 3, '4': 3, '5': 11, '6': '.MissionProto', '10': 'missionProtoes'},
  ],
};

const SearchConductMissionRelevantMeResponse$json = const {
  '1': 'SearchConductMissionRelevantMeResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'search_mission_result', '3': 2, '4': 1, '5': 14, '6': '.SearchMissionResult', '10': 'searchMissionResult'},
    const {'1': 'conduct_mission_protoes', '3': 3, '4': 3, '5': 11, '6': '.ConductMissionProto', '10': 'conductMissionProtoes'},
  ],
};

const GetAssignedMissionResponse$json = const {
  '1': 'GetAssignedMissionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'assign_mission_result', '3': 2, '4': 1, '5': 14, '6': '.AssignMissionResult', '10': 'assignMissionResult'},
  ],
};

const SubmitCollectMissionOutputResponse$json = const {
  '1': 'SubmitCollectMissionOutputResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'submit_result', '3': 2, '4': 1, '5': 14, '6': '.SubmitResult', '10': 'submitResult'},
  ],
};

const SubmitProcessMissionOutputResponse$json = const {
  '1': 'SubmitProcessMissionOutputResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'submit_result', '3': 2, '4': 1, '5': 14, '6': '.SubmitResult', '10': 'submitResult'},
  ],
};

const CountFetchMissionResponse$json = const {
  '1': 'CountFetchMissionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'val', '3': 2, '4': 1, '5': 3, '10': 'val'},
  ],
};

