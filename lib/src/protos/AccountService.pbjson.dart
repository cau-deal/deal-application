///
//  Generated code. Do not modify.
//  source: AccountService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const BANK$json = const {
  '1': 'BANK',
  '2': const [
    const {'1': 'UNKNOWN_BANK', '2': 0},
    const {'1': 'NH', '2': 1},
    const {'1': 'IBK', '2': 2},
    const {'1': 'KB', '2': 3},
    const {'1': 'KAKAO', '2': 4},
    const {'1': 'WOORI', '2': 5},
  ],
};

const AccountAuthResult$json = const {
  '1': 'AccountAuthResult',
  '2': const [
    const {'1': 'UNKNOWN_ACCOUNT_AUTH_RESULT', '2': 0},
    const {'1': 'SUCCESS_ACCOUNT_AUTH_RESULT', '2': 1},
    const {'1': 'FAIL_ACCOUNT_AUTH_RESULT', '2': 2},
  ],
};

const AccountAuthRequest$json = const {
  '1': 'AccountAuthRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.Account', '10': 'account'},
  ],
};

const Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'account_num', '3': 1, '4': 1, '5': 9, '10': 'accountNum'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'bank', '3': 3, '4': 1, '5': 14, '6': '.BANK', '10': 'bank'},
  ],
};

const AccountAuthResponse$json = const {
  '1': 'AccountAuthResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'account_auth_result', '3': 2, '4': 1, '5': 14, '6': '.AccountAuthResult', '10': 'accountAuthResult'},
  ],
};

