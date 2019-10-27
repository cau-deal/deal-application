///
//  Generated code. Do not modify.
//  source: Profile.proto
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

