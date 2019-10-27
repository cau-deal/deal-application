///
//  Generated code. Do not modify.
//  source: UserService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const ChangePasswordResult$json = const {
  '1': 'ChangePasswordResult',
  '2': const [
    const {'1': 'UNKNOWN_CHANGE_PASSWORD', '2': 0},
    const {'1': 'SUCCESS_CHANGE_PASSWORD', '2': 1},
    const {'1': 'FAIL_CHANGE_PASSWORD', '2': 2},
  ],
};

const IsAuth$json = const {
  '1': 'IsAuth',
  '2': const [
    const {'1': 'UNKNOWN_IS_AUTH', '2': 0},
    const {'1': 'TRUE_IS_AUTH', '2': 1},
    const {'1': 'FALSE_IS_AUTH', '2': 2},
  ],
};

const ChangePasswordRequest$json = const {
  '1': 'ChangePasswordRequest',
  '2': const [
    const {'1': 'old_password', '3': 1, '4': 1, '5': 9, '10': 'oldPassword'},
    const {'1': 'new_password', '3': 2, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

const ChangePasswordWithEmailRequest$json = const {
  '1': 'ChangePasswordWithEmailRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'old_password', '3': 2, '4': 1, '5': 9, '10': 'oldPassword'},
    const {'1': 'new_password', '3': 3, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

const UpdateProfilePhotoURLRequest$json = const {
  '1': 'UpdateProfilePhotoURLRequest',
  '2': const [
    const {'1': 'profile_photo_url', '3': 1, '4': 1, '5': 9, '10': 'profilePhotoUrl'},
  ],
};

const AuthInfo$json = const {
  '1': 'AuthInfo',
  '2': const [
    const {'1': 'is_phone_auth', '3': 1, '4': 1, '5': 14, '6': '.IsAuth', '10': 'isPhoneAuth'},
    const {'1': 'is_account_auth', '3': 2, '4': 1, '5': 14, '6': '.IsAuth', '10': 'isAccountAuth'},
  ],
};

const ChangePasswordResponse$json = const {
  '1': 'ChangePasswordResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'change_password_result', '3': 2, '4': 1, '5': 14, '6': '.ChangePasswordResult', '10': 'changePasswordResult'},
  ],
};

const LookUpUserInfoResponse$json = const {
  '1': 'LookUpUserInfoResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'profile', '3': 2, '4': 1, '5': 11, '6': '.Profile', '10': 'profile'},
  ],
};

const LookUpAuthInfoResponse$json = const {
  '1': 'LookUpAuthInfoResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
    const {'1': 'auth_info', '3': 2, '4': 1, '5': 11, '6': '.AuthInfo', '10': 'authInfo'},
  ],
};

const UpdateProfilePhotoURLResponse$json = const {
  '1': 'UpdateProfilePhotoURLResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.CommonResult', '10': 'result'},
  ],
};

