///
//  Generated code. Do not modify.
//  source: AuthService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const PlatformType$json = const {
  '1': 'PlatformType',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'ANDROID', '2': 1},
    const {'1': 'IOS', '2': 2},
    const {'1': 'WEB', '2': 3},
  ],
};

const AccountType$json = const {
  '1': 'AccountType',
  '2': const [
    const {'1': 'EMAIL', '2': 0},
    const {'1': 'GOOGLE', '2': 1},
  ],
};

const JWTType$json = const {
  '1': 'JWTType',
  '2': const [
    const {'1': 'ACCESS', '2': 0},
    const {'1': 'REFRESH', '2': 1},
  ],
};

const ResultCode$json = const {
  '1': 'ResultCode',
  '2': const [
    const {'1': 'SUCCESS', '2': 0},
    const {'1': 'ERROR', '2': 1},
  ],
};

const Empty$json = const {
  '1': 'Empty',
};

const SignInRequest$json = const {
  '1': 'SignInRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

const SignUpRequest$json = const {
  '1': 'SignUpRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'agreeWithTerms', '3': 3, '4': 1, '5': 8, '10': 'agreeWithTerms'},
    const {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.deal.AccountType', '10': 'type'},
    const {'1': 'platform', '3': 5, '4': 1, '5': 14, '6': '.deal.PlatformType', '10': 'platform'},
  ],
};

const CommonResult$json = const {
  '1': 'CommonResult',
  '2': const [
    const {'1': 'resultCode', '3': 1, '4': 1, '5': 14, '6': '.deal.ResultCode', '10': 'resultCode'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const JWTResult$json = const {
  '1': 'JWTResult',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.deal.JWTType', '10': 'type'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const SignInResponse$json = const {
  '1': 'SignInResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.deal.CommonResult', '10': 'result'},
    const {'1': 'jwt', '3': 2, '4': 3, '5': 11, '6': '.deal.JWTResult', '10': 'jwt'},
  ],
};

const SignUpResponse$json = const {
  '1': 'SignUpResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.deal.CommonResult', '10': 'result'},
    const {'1': 'jwt', '3': 2, '4': 3, '5': 11, '6': '.deal.JWTResult', '10': 'jwt'},
  ],
};

