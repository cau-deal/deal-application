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
    const {'1': 'WAITING_REGISTER', '2': 5},
    const {'1': 'RETURNED_MISSION', '2': 6},
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
    const {'1': 'INIT_CONDUCT_MISSION_STATE', '2': 7},
    const {'1': 'TRY_SELF_CONDUCT_MISSION_STATE', '2': 8},
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

const DecidePurchaseDistractor$json = const {
  '1': 'DecidePurchaseDistractor',
  '2': const [
    const {'1': 'UNKNOWN_DECIDE_PURCHASE_DISTRACTOR', '2': 0},
    const {'1': 'DECIDE_OK', '2': 1},
    const {'1': 'DECIDE_RETURN', '2': 2},
  ],
};

const DecideValidation$json = const {
  '1': 'DecideValidation',
  '2': const [
    const {'1': 'UNKNOWN_DECIDE_VALIDATION', '2': 0},
    const {'1': 'DECIDE_VALIDATION_OK', '2': 1},
    const {'1': 'DECIDE_VALIDATION_RETURN', '2': 2},
  ],
};

const RegisterMissionRequest$json = const {
  '1': 'RegisterMissionRequest',
  '2': const [
    const {'1': 'mission', '3': 1, '4': 1, '5': 11, '6': '.Mission', '10': 'mission'},
    const {'1': 'datas', '3': 2, '4': 3, '5': 11, '6': '.Data', '10': 'datas'},
    const {'1': 'labels', '3': 3, '4': 3, '5': 9, '10': 'labels'},
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

const UrlRequest$json = const {
  '1': 'UrlRequest',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
  ],
};

const DecidePurchaseRequest$json = const {
  '1': 'DecidePurchaseRequest',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'decide_purchase_distractor', '3': 2, '4': 1, '5': 14, '6': '.DecidePurchaseDistractor', '10': 'decidePurchaseDistractor'},
  ],
};

const GetDatasToValidRequest$json = const {
  '1': 'GetDatasToValidRequest',
  '2': const [
    const {'1': 'mission_type', '3': 1, '4': 1, '5': 14, '6': '.MissionType', '10': 'missionType'},
    const {'1': 'data_type', '3': 2, '4': 1, '5': 14, '6': '.DataType', '10': 'dataType'},
  ],
};

const SetDatasToValidRequest$json = const {
  '1': 'SetDatasToValidRequest',
  '2': const [
    const {'1': 'mission_type', '3': 1, '4': 1, '5': 14, '6': '.MissionType', '10': 'missionType'},
    const {'1': 'data_type', '3': 2, '4': 1, '5': 14, '6': '.DataType', '10': 'dataType'},
    const {'1': 'conduct_mission_id', '3': 3, '4': 1, '5': 5, '10': 'conductMissionId'},
    const {'1': 'decide_validation', '3': 4, '4': 1, '5': 14, '6': '.DecideValidation', '10': 'decideValidation'},
  ],
};

const GetMissionDatasToValidRequest$json = const {
  '1': 'GetMissionDatasToValidRequest',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
  ],
};

const SetMissionDatasToValidRequest$json = const {
  '1': 'SetMissionDatasToValidRequest',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'decide_validation', '3': 2, '4': 1, '5': 14, '6': '.DecideValidation', '10': 'decideValidation'},
  ],
};

const RegisterSurveyMissionRequest$json = const {
  '1': 'RegisterSurveyMissionRequest',
  '2': const [
    const {'1': 'mission', '3': 1, '4': 1, '5': 11, '6': '.Mission', '10': 'mission'},
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
    const {'1': 'survey_id', '3': 17, '4': 1, '5': 5, '10': 'surveyId'},
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

const MissionRecommendImage$json = const {
  '1': 'MissionRecommendImage',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'recommend_image_url', '3': 2, '4': 1, '5': 9, '10': 'recommendImageUrl'},
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

const GetMissionOwnerInfoResponse$json = const {
  '1': 'GetMissionOwnerInfoResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'register_profile', '3': 2, '4': 1, '5': 11, '6': '.Profile', '10': 'registerProfile'},
  ],
};

const GetParticipatedMissionStateResponse$json = const {
  '1': 'GetParticipatedMissionStateResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'conduct_mission_state', '3': 2, '4': 1, '5': 14, '6': '.ConductMissionState', '10': 'conductMissionState'},
  ],
};

const GetLabelsResponse$json = const {
  '1': 'GetLabelsResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'labels', '3': 2, '4': 3, '5': 9, '10': 'labels'},
  ],
};

const GetLabelingResultResponse$json = const {
  '1': 'GetLabelingResultResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'label_result', '3': 2, '4': 1, '5': 9, '10': 'labelResult'},
  ],
};

const GetRecommendMissionImagesResponse$json = const {
  '1': 'GetRecommendMissionImagesResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'mission_recommend_images', '3': 2, '4': 3, '5': 11, '6': '.MissionRecommendImage', '10': 'missionRecommendImages'},
  ],
};

const DecidePurchaseResponse$json = const {
  '1': 'DecidePurchaseResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
  ],
};

const GetProcessMissionImagesResponse$json = const {
  '1': 'GetProcessMissionImagesResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'urls', '3': 2, '4': 3, '5': 9, '10': 'urls'},
  ],
};

const GetDatasToValidResponse$json = const {
  '1': 'GetDatasToValidResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'conduct_mission_id', '3': 2, '4': 1, '5': 5, '10': 'conductMissionId'},
    const {'1': 'datas', '3': 3, '4': 3, '5': 9, '10': 'datas'},
    const {'1': 'labels', '3': 4, '4': 3, '5': 9, '10': 'labels'},
  ],
};

const SetDatasToValidResponse$json = const {
  '1': 'SetDatasToValidResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
  ],
};

const GetMissionDatasToValidResponse$json = const {
  '1': 'GetMissionDatasToValidResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'mission_id', '3': 2, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'datas', '3': 3, '4': 3, '5': 9, '10': 'datas'},
    const {'1': 'labels', '3': 4, '4': 3, '5': 9, '10': 'labels'},
  ],
};

const SetMissionDatasToValidResponse$json = const {
  '1': 'SetMissionDatasToValidResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
  ],
};

const RegisterSurveyMissionResponse$json = const {
  '1': 'RegisterSurveyMissionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
  ],
};

const GetSurveyIdResponse$json = const {
  '1': 'GetSurveyIdResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'survey_id', '3': 2, '4': 1, '5': 5, '10': 'surveyId'},
  ],
};

