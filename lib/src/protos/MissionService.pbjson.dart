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

const RegistMissionResult$json = const {
  '1': 'RegistMissionResult',
  '2': const [
    const {'1': 'UNKNOWN_REGIST_MISSION_RESULT', '2': 0},
    const {'1': 'SUCCESS_REGIST_MISSION_RESULT', '2': 1},
    const {'1': 'FAIL_REGIST_MISSION_RESULT', '2': 2},
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

const RelevantType$json = const {
  '1': 'RelevantType',
  '2': const [
    const {'1': 'UNKNOWN_RELEVANT_TYPE', '2': 0},
    const {'1': 'ALL_RELEVANT_TYPE', '2': 1},
    const {'1': 'PROCESSING_RELEVANT_TYPE', '2': 2},
    const {'1': 'REGIST_RELEVANT_TYPE', '2': 3},
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

const RegistMissionRequest$json = const {
  '1': 'RegistMissionRequest',
  '2': const [
    const {'1': 'mission', '3': 1, '4': 1, '5': 11, '6': '.Mission', '10': 'mission'},
  ],
};

const SearchMissionRequest$json = const {
  '1': 'SearchMissionRequest',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.MissionType', '10': 'type'},
    const {'1': 'keyworkd', '3': 2, '4': 1, '5': 9, '10': 'keyworkd'},
    const {'1': 'mission_page', '3': 3, '4': 1, '5': 11, '6': '.MissionPage', '10': 'missionPage'},
  ],
};

const MissionIdRequest$json = const {
  '1': 'MissionIdRequest',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
  ],
};

const SearchMissionReleventMeRequest$json = const {
  '1': 'SearchMissionReleventMeRequest',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.RelevantType', '10': 'type'},
    const {'1': 'mission_page', '3': 2, '4': 1, '5': 11, '6': '.MissionPage', '10': 'missionPage'},
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
    const {'1': 'price_of_packge', '3': 7, '4': 1, '5': 5, '10': 'priceOfPackge'},
    const {'1': 'deadline', '3': 8, '4': 1, '5': 11, '6': '.Datetime', '10': 'deadline'},
    const {'1': 'order_package_quantity', '3': 9, '4': 1, '5': 5, '10': 'orderPackageQuantity'},
    const {'1': 'summary', '3': 10, '4': 1, '5': 9, '10': 'summary'},
    const {'1': 'contact_clause', '3': 11, '4': 1, '5': 9, '10': 'contactClause'},
    const {'1': 'specification', '3': 12, '4': 1, '5': 9, '10': 'specification'},
    const {'1': 'mission_explanation_images', '3': 13, '4': 3, '5': 11, '6': '.MissionExplanationImage', '10': 'missionExplanationImages'},
    const {'1': 'created_at', '3': 14, '4': 1, '5': 11, '6': '.Datetime', '10': 'createdAt'},
  ],
};

const MissionProto$json = const {
  '1': 'MissionProto',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.MissionType', '10': 'type'},
    const {'1': 'price_of_packge', '3': 7, '4': 1, '5': 5, '10': 'priceOfPackge'},
    const {'1': 'deadline', '3': 8, '4': 1, '5': 11, '6': '.Datetime', '10': 'deadline'},
    const {'1': 'summary', '3': 10, '4': 1, '5': 9, '10': 'summary'},
    const {'1': 'thumbnail_url', '3': 15, '4': 1, '5': 9, '10': 'thumbnailUrl'},
  ],
};

const RegistMissionResponse$json = const {
  '1': 'RegistMissionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'regist_mission_result', '3': 2, '4': 1, '5': 14, '6': '.RegistMissionResult', '10': 'registMissionResult'},
  ],
};

const SearchMissionResponse$json = const {
  '1': 'SearchMissionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'search_mission_result', '3': 2, '4': 1, '5': 14, '6': '.SearchMissionResult', '10': 'searchMissionResult'},
    const {'1': 'mission_ptoroes', '3': 3, '4': 3, '5': 11, '6': '.MissionProto', '10': 'missionPtoroes'},
  ],
};

const SearchMissionWithIdReponse$json = const {
  '1': 'SearchMissionWithIdReponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'search_mission_result', '3': 2, '4': 1, '5': 14, '6': '.SearchMissionResult', '10': 'searchMissionResult'},
    const {'1': 'mission', '3': 3, '4': 1, '5': 11, '6': '.Mission', '10': 'mission'},
  ],
};

const SearchMissionReleventMeResponse$json = const {
  '1': 'SearchMissionReleventMeResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'search_mission_result', '3': 2, '4': 1, '5': 14, '6': '.SearchMissionResult', '10': 'searchMissionResult'},
    const {'1': 'mission_protoes', '3': 3, '4': 3, '5': 11, '6': '.MissionProto', '10': 'missionProtoes'},
    const {'1': 'mission_states', '3': 4, '4': 3, '5': 14, '6': '.MissionState', '10': 'missionStates'},
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

const MissionPage$json = const {
  '1': 'MissionPage',
  '2': const [
    const {'1': 'mission_page', '3': 1, '4': 1, '5': 14, '6': '.MissionPageMode', '10': 'missionPage'},
    const {'1': 'from', '3': 2, '4': 1, '5': 5, '10': 'from'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 5, '10': 'amount'},
  ],
};

