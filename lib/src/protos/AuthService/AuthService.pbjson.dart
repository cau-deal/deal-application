///
//  Generated code. Do not modify.
//  source: AuthService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const AccountType$json = const {
  '1': 'AccountType',
  '2': const [
    const {'1': 'UNKNOWN_ACCOUNT_TYPE', '2': 0},
    const {'1': 'EMAIL', '2': 1},
    const {'1': 'GOOGLE', '2': 2},
  ],
};

const JWTType$json = const {
  '1': 'JWTType',
  '2': const [
    const {'1': 'UNKNOWN_JWT_TYPE', '2': 0},
    const {'1': 'ACCESS', '2': 1},
    const {'1': 'REFRESH', '2': 2},
  ],
};

const SignInRequest$json = const {
  '1': 'SignInRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

const GoogleSignInRequest$json = const {
  '1': 'GoogleSignInRequest',
  '2': const [
    const {'1': 'credential', '3': 1, '4': 1, '5': 11, '6': '.SignInRequest', '10': 'credential'},
    const {'1': 'profile', '3': 2, '4': 1, '5': 11, '6': '.GoogleProfile', '10': 'profile'},
  ],
};

const SignUpRequest$json = const {
  '1': 'SignUpRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'agree_with_terms', '3': 3, '4': 1, '5': 8, '10': 'agreeWithTerms'},
    const {'1': 'type', '3': 4, '4': 1, '5': 14, '6': '.AccountType', '10': 'type'},
    const {'1': 'platform', '3': 5, '4': 1, '5': 14, '6': '.PlatformType', '10': 'platform'},
  ],
};

const FindPasswordRequest$json = const {
  '1': 'FindPasswordRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

const GoogleProfile$json = const {
  '1': 'GoogleProfile',
  '2': const [
    const {'1': 'profile_image', '3': 1, '4': 1, '5': 9, '10': 'profileImage'},
  ],
};

const JWTResult$json = const {
  '1': 'JWTResult',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.JWTType', '10': 'type'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

const SignInResponse$json = const {
  '1': 'SignInResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'jwt', '3': 2, '4': 3, '5': 11, '6': '.JWTResult', '10': 'jwt'},
  ],
};

const SignUpResponse$json = const {
  '1': 'SignUpResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'jwt', '3': 2, '4': 3, '5': 11, '6': '.JWTResult', '10': 'jwt'},
  ],
};

const FindPasswordResponse$json = const {
  '1': 'FindPasswordResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
  ],
};

const TokenResponse$json = const {
  '1': 'TokenResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'jwt', '3': 2, '4': 1, '5': 11, '6': '.JWTResult', '10': 'jwt'},
  ],
};

