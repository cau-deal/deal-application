///
//  Generated code. Do not modify.
//  source: UserService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'CommonResult.pb.dart' as $2;

import 'UserService.pbenum.dart';

export 'UserService.pbenum.dart';

class ChangePasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChangePasswordRequest', createEmptyInstance: create)
    ..aOS(1, 'oldPassword')
    ..aOS(2, 'newPassword')
    ..hasRequiredFields = false
  ;

  ChangePasswordRequest._() : super();
  factory ChangePasswordRequest() => create();
  factory ChangePasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangePasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChangePasswordRequest clone() => ChangePasswordRequest()..mergeFromMessage(this);
  ChangePasswordRequest copyWith(void Function(ChangePasswordRequest) updates) => super.copyWith((message) => updates(message as ChangePasswordRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest create() => ChangePasswordRequest._();
  ChangePasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordRequest> createRepeated() => $pb.PbList<ChangePasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePasswordRequest>(create);
  static ChangePasswordRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get oldPassword => $_getSZ(0);
  @$pb.TagNumber(1)
  set oldPassword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOldPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearOldPassword() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get newPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set newPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewPassword() => clearField(2);
}

class ChangePasswordWithEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChangePasswordWithEmailRequest', createEmptyInstance: create)
    ..aOS(1, 'email')
    ..aOS(2, 'oldPassword')
    ..aOS(3, 'newPassword')
    ..hasRequiredFields = false
  ;

  ChangePasswordWithEmailRequest._() : super();
  factory ChangePasswordWithEmailRequest() => create();
  factory ChangePasswordWithEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangePasswordWithEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChangePasswordWithEmailRequest clone() => ChangePasswordWithEmailRequest()..mergeFromMessage(this);
  ChangePasswordWithEmailRequest copyWith(void Function(ChangePasswordWithEmailRequest) updates) => super.copyWith((message) => updates(message as ChangePasswordWithEmailRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangePasswordWithEmailRequest create() => ChangePasswordWithEmailRequest._();
  ChangePasswordWithEmailRequest createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordWithEmailRequest> createRepeated() => $pb.PbList<ChangePasswordWithEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordWithEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePasswordWithEmailRequest>(create);
  static ChangePasswordWithEmailRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get oldPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set oldPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOldPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearOldPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get newPassword => $_getSZ(2);
  @$pb.TagNumber(3)
  set newPassword($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNewPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearNewPassword() => clearField(3);
}

class Profile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Profile', createEmptyInstance: create)
    ..aOS(1, 'email')
    ..a<$core.int>(2, 'level', $pb.PbFieldType.O3)
    ..e<UserState>(3, 'state', $pb.PbFieldType.OE, defaultOrMaker: UserState.UNKNOWN_USER_STATE, valueOf: UserState.valueOf, enumValues: UserState.values)
    ..e<Role>(4, 'role', $pb.PbFieldType.OE, defaultOrMaker: Role.UNKNOWN_ROLE, valueOf: Role.valueOf, enumValues: Role.values)
    ..aOS(5, 'profilePhotoUrl')
    ..aOS(6, 'name')
    ..hasRequiredFields = false
  ;

  Profile._() : super();
  factory Profile() => create();
  factory Profile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Profile clone() => Profile()..mergeFromMessage(this);
  Profile copyWith(void Function(Profile) updates) => super.copyWith((message) => updates(message as Profile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get level => $_getIZ(1);
  @$pb.TagNumber(2)
  set level($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevel() => clearField(2);

  @$pb.TagNumber(3)
  UserState get state => $_getN(2);
  @$pb.TagNumber(3)
  set state(UserState v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => clearField(3);

  @$pb.TagNumber(4)
  Role get role => $_getN(3);
  @$pb.TagNumber(4)
  set role(Role v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRole() => $_has(3);
  @$pb.TagNumber(4)
  void clearRole() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get profilePhotoUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set profilePhotoUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasProfilePhotoUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearProfilePhotoUrl() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get name => $_getSZ(5);
  @$pb.TagNumber(6)
  set name($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasName() => $_has(5);
  @$pb.TagNumber(6)
  void clearName() => clearField(6);
}

class AuthInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AuthInfo', createEmptyInstance: create)
    ..e<IsAuth>(1, 'isPhoneAuth', $pb.PbFieldType.OE, defaultOrMaker: IsAuth.UNKNOWN_IS_AUTH, valueOf: IsAuth.valueOf, enumValues: IsAuth.values)
    ..e<IsAuth>(2, 'isAccountAuth', $pb.PbFieldType.OE, defaultOrMaker: IsAuth.UNKNOWN_IS_AUTH, valueOf: IsAuth.valueOf, enumValues: IsAuth.values)
    ..hasRequiredFields = false
  ;

  AuthInfo._() : super();
  factory AuthInfo() => create();
  factory AuthInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AuthInfo clone() => AuthInfo()..mergeFromMessage(this);
  AuthInfo copyWith(void Function(AuthInfo) updates) => super.copyWith((message) => updates(message as AuthInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthInfo create() => AuthInfo._();
  AuthInfo createEmptyInstance() => create();
  static $pb.PbList<AuthInfo> createRepeated() => $pb.PbList<AuthInfo>();
  @$core.pragma('dart2js:noInline')
  static AuthInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthInfo>(create);
  static AuthInfo _defaultInstance;

  @$pb.TagNumber(1)
  IsAuth get isPhoneAuth => $_getN(0);
  @$pb.TagNumber(1)
  set isPhoneAuth(IsAuth v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsPhoneAuth() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsPhoneAuth() => clearField(1);

  @$pb.TagNumber(2)
  IsAuth get isAccountAuth => $_getN(1);
  @$pb.TagNumber(2)
  set isAccountAuth(IsAuth v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsAccountAuth() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsAccountAuth() => clearField(2);
}

class ChangePasswordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChangePasswordResponse', createEmptyInstance: create)
    ..aOM<$2.CommonResult>(1, 'result', subBuilder: $2.CommonResult.create)
    ..e<ChangePasswordResult>(2, 'changePasswordResult', $pb.PbFieldType.OE, defaultOrMaker: ChangePasswordResult.UNKNOWN_CHANGE_PASSWORD, valueOf: ChangePasswordResult.valueOf, enumValues: ChangePasswordResult.values)
    ..hasRequiredFields = false
  ;

  ChangePasswordResponse._() : super();
  factory ChangePasswordResponse() => create();
  factory ChangePasswordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangePasswordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ChangePasswordResponse clone() => ChangePasswordResponse()..mergeFromMessage(this);
  ChangePasswordResponse copyWith(void Function(ChangePasswordResponse) updates) => super.copyWith((message) => updates(message as ChangePasswordResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangePasswordResponse create() => ChangePasswordResponse._();
  ChangePasswordResponse createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordResponse> createRepeated() => $pb.PbList<ChangePasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePasswordResponse>(create);
  static ChangePasswordResponse _defaultInstance;

  @$pb.TagNumber(1)
  $2.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($2.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $2.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  ChangePasswordResult get changePasswordResult => $_getN(1);
  @$pb.TagNumber(2)
  set changePasswordResult(ChangePasswordResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasChangePasswordResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearChangePasswordResult() => clearField(2);
}

class LookUpUserInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LookUpUserInfoResponse', createEmptyInstance: create)
    ..aOM<$2.CommonResult>(1, 'result', subBuilder: $2.CommonResult.create)
    ..aOM<Profile>(2, 'profile', subBuilder: Profile.create)
    ..hasRequiredFields = false
  ;

  LookUpUserInfoResponse._() : super();
  factory LookUpUserInfoResponse() => create();
  factory LookUpUserInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LookUpUserInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LookUpUserInfoResponse clone() => LookUpUserInfoResponse()..mergeFromMessage(this);
  LookUpUserInfoResponse copyWith(void Function(LookUpUserInfoResponse) updates) => super.copyWith((message) => updates(message as LookUpUserInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LookUpUserInfoResponse create() => LookUpUserInfoResponse._();
  LookUpUserInfoResponse createEmptyInstance() => create();
  static $pb.PbList<LookUpUserInfoResponse> createRepeated() => $pb.PbList<LookUpUserInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static LookUpUserInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LookUpUserInfoResponse>(create);
  static LookUpUserInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  $2.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($2.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $2.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  Profile get profile => $_getN(1);
  @$pb.TagNumber(2)
  set profile(Profile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfile() => clearField(2);
  @$pb.TagNumber(2)
  Profile ensureProfile() => $_ensure(1);
}

class LookUpAuthInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LookUpAuthInfoResponse', createEmptyInstance: create)
    ..aOM<$2.CommonResult>(1, 'result', subBuilder: $2.CommonResult.create)
    ..aOM<AuthInfo>(2, 'authInfo', subBuilder: AuthInfo.create)
    ..hasRequiredFields = false
  ;

  LookUpAuthInfoResponse._() : super();
  factory LookUpAuthInfoResponse() => create();
  factory LookUpAuthInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LookUpAuthInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LookUpAuthInfoResponse clone() => LookUpAuthInfoResponse()..mergeFromMessage(this);
  LookUpAuthInfoResponse copyWith(void Function(LookUpAuthInfoResponse) updates) => super.copyWith((message) => updates(message as LookUpAuthInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LookUpAuthInfoResponse create() => LookUpAuthInfoResponse._();
  LookUpAuthInfoResponse createEmptyInstance() => create();
  static $pb.PbList<LookUpAuthInfoResponse> createRepeated() => $pb.PbList<LookUpAuthInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static LookUpAuthInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LookUpAuthInfoResponse>(create);
  static LookUpAuthInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  $2.CommonResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($2.CommonResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $2.CommonResult ensureResult() => $_ensure(0);

  @$pb.TagNumber(2)
  AuthInfo get authInfo => $_getN(1);
  @$pb.TagNumber(2)
  set authInfo(AuthInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthInfo() => clearField(2);
  @$pb.TagNumber(2)
  AuthInfo ensureAuthInfo() => $_ensure(1);
}

