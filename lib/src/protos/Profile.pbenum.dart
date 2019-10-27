///
//  Generated code. Do not modify.
//  source: Profile.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class UserState extends $pb.ProtobufEnum {
  static const UserState UNKNOWN_USER_STATE = UserState._(0, 'UNKNOWN_USER_STATE');
  static const UserState NORMAL = UserState._(1, 'NORMAL');
  static const UserState BANNED = UserState._(2, 'BANNED');
  static const UserState DELETED = UserState._(3, 'DELETED');

  static const $core.List<UserState> values = <UserState> [
    UNKNOWN_USER_STATE,
    NORMAL,
    BANNED,
    DELETED,
  ];

  static final $core.Map<$core.int, UserState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserState valueOf($core.int value) => _byValue[value];

  const UserState._($core.int v, $core.String n) : super(v, n);
}

class Role extends $pb.ProtobufEnum {
  static const Role UNKNOWN_ROLE = Role._(0, 'UNKNOWN_ROLE');
  static const Role USER = Role._(1, 'USER');
  static const Role MANAGER = Role._(2, 'MANAGER');
  static const Role ROOT = Role._(3, 'ROOT');

  static const $core.List<Role> values = <Role> [
    UNKNOWN_ROLE,
    USER,
    MANAGER,
    ROOT,
  ];

  static final $core.Map<$core.int, Role> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Role valueOf($core.int value) => _byValue[value];

  const Role._($core.int v, $core.String n) : super(v, n);
}

