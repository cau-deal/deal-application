///
//  Generated code. Do not modify.
//  source: PhoneService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const MobileCarrier$json = const {
  '1': 'MobileCarrier',
  '2': const [
    const {'1': 'UNKNOWN_MOBILE_CARRIER', '2': 0},
    const {'1': 'KTF', '2': 1},
    const {'1': 'SKT', '2': 2},
    const {'1': 'LGU', '2': 3},
    const {'1': 'KTR', '2': 4},
    const {'1': 'SKR', '2': 5},
    const {'1': 'LGR', '2': 6},
  ],
};

const Sex$json = const {
  '1': 'Sex',
  '2': const [
    const {'1': 'UNKNOWN_SEX', '2': 0},
    const {'1': 'MALE', '2': 1},
    const {'1': 'FEMALE', '2': 2},
  ],
};

const PhoneResult$json = const {
  '1': 'PhoneResult',
  '2': const [
    const {'1': 'UNKNOWN_PHONE_RESULT', '2': 0},
    const {'1': 'SUCCESS_PHONE_RESULT', '2': 1},
    const {'1': 'FAIL_PHONE_RESULT', '2': 2},
  ],
};

const PhoneAuthRequest$json = const {
  '1': 'PhoneAuthRequest',
  '2': const [
    const {'1': 'phone_num', '3': 1, '4': 1, '5': 9, '10': 'phoneNum'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'mobile_carrier', '3': 3, '4': 1, '5': 14, '6': '.MobileCarrier', '10': 'mobileCarrier'},
    const {'1': 'is_native', '3': 4, '4': 1, '5': 8, '10': 'isNative'},
    const {'1': 'birthday', '3': 5, '4': 1, '5': 11, '6': '.Date', '10': 'birthday'},
  ],
};

const PhoneAuthResponse$json = const {
  '1': 'PhoneAuthResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'phone_result', '3': 2, '4': 1, '5': 14, '6': '.PhoneResult', '10': 'phoneResult'},
  ],
};

