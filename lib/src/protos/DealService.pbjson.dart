///
//  Generated code. Do not modify.
//  source: DealService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const InquiryCategory$json = const {
  '1': 'InquiryCategory',
  '2': const [
    const {'1': 'UNKNOWN_INQUIRY_CATEGORY', '2': 0},
    const {'1': 'POINT', '2': 1},
    const {'1': 'PROJECT', '2': 2},
    const {'1': 'REGISTER', '2': 3},
    const {'1': 'ETC_INQUIRY', '2': 4},
  ],
};

const AccuseCategory$json = const {
  '1': 'AccuseCategory',
  '2': const [
    const {'1': 'UNKNOWN_ACCUSE_CATEGORY', '2': 0},
    const {'1': 'INSULT', '2': 1},
    const {'1': 'ADVERTISEMENT', '2': 2},
    const {'1': 'ADULT', '2': 3},
    const {'1': 'ETC_ACCUSE', '2': 4},
  ],
};

const InquiryRequest$json = const {
  '1': 'InquiryRequest',
  '2': const [
    const {'1': 'inquiry', '3': 1, '4': 1, '5': 11, '6': '.Inquiry', '10': 'inquiry'},
  ],
};

const AccuseRequest$json = const {
  '1': 'AccuseRequest',
  '2': const [
    const {'1': 'accuse', '3': 1, '4': 1, '5': 11, '6': '.Accuse', '10': 'accuse'},
  ],
};

const Inquiry$json = const {
  '1': 'Inquiry',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'contents', '3': 2, '4': 1, '5': 9, '10': 'contents'},
    const {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.InquiryCategory', '10': 'category'},
  ],
};

const Accuse$json = const {
  '1': 'Accuse',
  '2': const [
    const {'1': 'mission_id', '3': 1, '4': 1, '5': 5, '10': 'missionId'},
    const {'1': 'contents', '3': 2, '4': 1, '5': 9, '10': 'contents'},
    const {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.AccuseCategory', '10': 'category'},
  ],
};

const InquiryWithAnswer$json = const {
  '1': 'InquiryWithAnswer',
  '2': const [
    const {'1': 'inquiry', '3': 1, '4': 1, '5': 11, '6': '.Inquiry', '10': 'inquiry'},
    const {'1': 'is_complete', '3': 2, '4': 1, '5': 8, '10': 'isComplete'},
    const {'1': 'created_at', '3': 3, '4': 1, '5': 11, '6': '.Datetime', '10': 'createdAt'},
    const {'1': 'answer', '3': 4, '4': 1, '5': 9, '10': 'answer'},
  ],
};

const InquiryResponse$json = const {
  '1': 'InquiryResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
  ],
};

const LookUpInquiryResponse$json = const {
  '1': 'LookUpInquiryResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'inquiries', '3': 2, '4': 3, '5': 11, '6': '.InquiryWithAnswer', '10': 'inquiries'},
  ],
};

const AccuseResponse$json = const {
  '1': 'AccuseResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
  ],
};

