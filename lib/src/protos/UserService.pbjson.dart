///
//  Generated code. Do not modify.
//  source: UserService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const UserState$json = const {
  '1': 'UserState',
  '2': const [
    const {'1': 'UNKNOWN_USER_STATE', '2': 0},
    const {'1': 'NORMAL', '2': 1},
    const {'1': 'BANNED', '2': 2},
    const {'1': 'DELETED', '2': 3},
  ],
};

const Role$json = const {
  '1': 'Role',
  '2': const [
    const {'1': 'UNKNOWN_ROLE', '2': 0},
    const {'1': 'USER', '2': 1},
    const {'1': 'MANAGER', '2': 2},
    const {'1': 'ROOT', '2': 3},
  ],
};

const ChangePasswordResult$json = const {
  '1': 'ChangePasswordResult',
  '2': const [
    const {'1': 'UNKNOWN_CHANGE_PASSWORD', '2': 0},
    const {'1': 'SUCCESS_CHANGE_PASSWORD', '2': 1},
    const {'1': 'FAIL_CHANGE_PASSWORD', '2': 2},
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

const Profile$json = const {
  '1': 'Profile',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'level', '3': 2, '4': 1, '5': 5, '10': 'level'},
    const {'1': 'state', '3': 3, '4': 1, '5': 14, '6': '.UserState', '10': 'state'},
    const {'1': 'role', '3': 4, '4': 1, '5': 14, '6': '.Role', '10': 'role'},
    const {'1': 'profile_photo_url', '3': 5, '4': 1, '5': 9, '10': 'profilePhotoUrl'},
    const {'1': 'name', '3': 6, '4': 1, '5': 9, '10': 'name'},
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

