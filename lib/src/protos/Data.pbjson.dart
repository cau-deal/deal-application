///
//  Generated code. Do not modify.
//  source: Data.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const DataType$json = const {
  '1': 'DataType',
  '2': const [
    const {'1': 'UNKNOWN_DATA_TYPE', '2': 0},
    const {'1': 'IMAGE', '2': 1},
    const {'1': 'SOUND', '2': 2},
    const {'1': 'SURVEY', '2': 3},
  ],
};

const DataState$json = const {
  '1': 'DataState',
  '2': const [
    const {'1': 'UNKNOWN_DATA_STATE', '2': 0},
    const {'1': 'WAITING__PROCESS', '2': 1},
    const {'1': 'DURING_PROCESS', '2': 2},
    const {'1': 'WAITING_VERIFICATION', '2': 3},
    const {'1': 'DURING_VERIFICATION', '2': 4},
    const {'1': 'COMPLETE_VERIFICATION', '2': 5},
    const {'1': 'RETURN_VERIFICATION', '2': 6},
  ],
};

const MissionExplanationImageType$json = const {
  '1': 'MissionExplanationImageType',
  '2': const [
    const {'1': 'UNKNOWN_MISSION_EXPLANATION_IMAGE_TYPE', '2': 0},
    const {'1': 'THUMBNAIL', '2': 1},
    const {'1': 'BACKGROUND', '2': 2},
    const {'1': 'MAIN_TEXT', '2': 3},
  ],
};

const Data$json = const {
  '1': 'Data',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'mission_id', '3': 2, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'state', '3': 3, '4': 1, '5': 14, '6': '.DataState', '10': 'state'},
  ],
};

const ProcessedImageData$json = const {
  '1': 'ProcessedImageData',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.Data', '10': 'data'},
    const {'1': 'labeling_result', '3': 2, '4': 1, '5': 9, '10': 'labelingResult'},
  ],
};

const MissionExplanationImage$json = const {
  '1': 'MissionExplanationImage',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'mission_id', '3': 2, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.MissionExplanationImageType', '10': 'type'},
  ],
};

