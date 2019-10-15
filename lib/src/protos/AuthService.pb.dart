///
//  Generated code. Do not modify.
//  source: AuthService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'CommonResult.pb.dart' as $2;

import 'AuthService.pbenum.dart';
import 'PlatformType.pbenum.dart' as $3;

export 'AuthService.pbenum.dart';

class SignInRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignInRequest', createEmptyInstance: create)
    ..aOS(1, 'email')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  SignInRequest._() : super();
  factory SignInRequest() => create();
  factory SignInRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SignInRequest clone() => SignInRequest()..mergeFromMessage(this);
  SignInRequest copyWith(void Function(SignInRequest) updates) => super.copyWith((message) => updates(message as SignInRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignInRequest create() => SignInRequest._();
  SignInRequest createEmptyInstance() => create();
  static $pb.PbList<SignInRequest> createRepeated() => $pb.PbList<SignInRequest>();
  @$core.pragma('dart2js:noInline')
  static SignInRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInRequest>(create);
  static SignInRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class GoogleSignInRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GoogleSignInRequest', createEmptyInstance: create)
    ..aOM<SignInRequest>(1, 'credential', subBuilder: SignInRequest.create)
    ..aOM<GoogleProfile>(2, 'profile', subBuilder: GoogleProfile.create)
    ..hasRequiredFields = false
  ;

  GoogleSignInRequest._() : super();
  factory GoogleSignInRequest() => create();
  factory GoogleSignInRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoogleSignInRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GoogleSignInRequest clone() => GoogleSignInRequest()..mergeFromMessage(this);
  GoogleSignInRequest copyWith(void Function(GoogleSignInRequest) updates) => super.copyWith((message) => updates(message as GoogleSignInRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GoogleSignInRequest create() => GoogleSignInRequest._();
  GoogleSignInRequest createEmptyInstance() => create();
  static $pb.PbList<GoogleSignInRequest> createRepeated() => $pb.PbList<GoogleSignInRequest>();
  @$core.pragma('dart2js:noInline')
  static GoogleSignInRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoogleSignInRequest>(create);
  static GoogleSignInRequest _defaultInstance;

  @$pb.TagNumber(1)
  SignInRequest get credential => $_getN(0);
  @$pb.TagNumber(1)
  set credential(SignInRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCredential() => $_has(0);
  @$pb.TagNumber(1)
  void clearCredential() => clearField(1);
  @$pb.TagNumber(1)
  SignInRequest ensureCredential() => $_ensure(0);

  @$pb.TagNumber(2)
  GoogleProfile get profile => $_getN(1);
  @$pb.TagNumber(2)
  set profile(GoogleProfile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasProfile() => $_has(1);
  @$pb.TagNumber(2)
  void clearProfile() => clearField(2);
  @$pb.TagNumber(2)
  GoogleProfile ensureProfile() => $_ensure(1);
}

class SignUpRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignUpRequest', createEmptyInstance: create)
    ..aOS(1, 'email')
    ..aOS(2, 'password')
    ..aOB(3, 'agreeWithTerms')
    ..e<AccountType>(4, 'type', $pb.PbFieldType.OE, defaultOrMaker: AccountType.UNKNOWN_ACCOUNT_TYPE, valueOf: AccountType.valueOf, enumValues: AccountType.values)
    ..e<$3.PlatformType>(5, 'platform', $pb.PbFieldType.OE, defaultOrMaker: $3.PlatformType.UNKNOWN_PLATFORM_TYPE, valueOf: $3.PlatformType.valueOf, enumValues: $3.PlatformType.values)
    ..hasRequiredFields = false
  ;

  SignUpRequest._() : super();
  factory SignUpRequest() => create();
  factory SignUpRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignUpRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SignUpRequest clone() => SignUpRequest()..mergeFromMessage(this);
  SignUpRequest copyWith(void Function(SignUpRequest) updates) => super.copyWith((message) => updates(message as SignUpRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignUpRequest create() => SignUpRequest._();
  SignUpRequest createEmptyInstance() => create();
  static $pb.PbList<SignUpRequest> createRepeated() => $pb.PbList<SignUpRequest>();
  @$core.pragma('dart2js:noInline')
  static SignUpRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignUpRequest>(create);
  static SignUpRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get agreeWithTerms => $_getBF(2);
  @$pb.TagNumber(3)
  set agreeWithTerms($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAgreeWithTerms() => $_has(2);
  @$pb.TagNumber(3)
  void clearAgreeWithTerms() => clearField(3);

  @$pb.TagNumber(4)
  AccountType get type => $_getN(3);
  @$pb.TagNumber(4)
  set type(AccountType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => clearField(4);

  @$pb.TagNumber(5)
  $3.PlatformType get platform => $_getN(4);
  @$pb.TagNumber(5)
  set platform($3.PlatformType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPlatform() => $_has(4);
  @$pb.TagNumber(5)
  void clearPlatform() => clearField(5);
}

class FindPasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FindPasswordRequest', createEmptyInstance: create)
    ..aOS(1, 'email')
    ..hasRequiredFields = false
  ;

  FindPasswordRequest._() : super();
  factory FindPasswordRequest() => create();
  factory FindPasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindPasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FindPasswordRequest clone() => FindPasswordRequest()..mergeFromMessage(this);
  FindPasswordRequest copyWith(void Function(FindPasswordRequest) updates) => super.copyWith((message) => updates(message as FindPasswordRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FindPasswordRequest create() => FindPasswordRequest._();
  FindPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<FindPasswordRequest> createRepeated() => $pb.PbList<FindPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static FindPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindPasswordRequest>(create);
  static FindPasswordRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

class CheckDuplicationEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CheckDuplicationEmailRequest', createEmptyInstance: create)
    ..aOS(1, 'email')
    ..hasRequiredFields = false
  ;

  CheckDuplicationEmailRequest._() : super();
  factory CheckDuplicationEmailRequest() => create();
  factory CheckDuplicationEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckDuplicationEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CheckDuplicationEmailRequest clone() => CheckDuplicationEmailRequest()..mergeFromMessage(this);
  CheckDuplicationEmailRequest copyWith(void Function(CheckDuplicationEmailRequest) updates) => super.copyWith((message) => updates(message as CheckDuplicationEmailRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckDuplicationEmailRequest create() => CheckDuplicationEmailRequest._();
  CheckDuplicationEmailRequest createEmptyInstance() => create();
  static $pb.PbList<CheckDuplicationEmailRequest> createRepeated() => $pb.PbList<CheckDuplicationEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckDuplicationEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckDuplicationEmailRequest>(create);
  static CheckDuplicationEmailRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

class GoogleProfile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GoogleProfile', createEmptyInstance: create)
    ..aOS(1, 'profileImage')
    ..hasRequiredFields = false
  ;

  GoogleProfile._() : super();
  factory GoogleProfile() => create();
  factory GoogleProfile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoogleProfile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GoogleProfile clone() => GoogleProfile()..mergeFromMessage(this);
  GoogleProfile copyWith(void Function(GoogleProfile) updates) => super.copyWith((message) => updates(message as GoogleProfile));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GoogleProfile create() => GoogleProfile._();
  GoogleProfile createEmptyInstance() => create();
  static $pb.PbList<GoogleProfile> createRepeated() => $pb.PbList<GoogleProfile>();
  @$core.pragma('dart2js:noInline')
  static GoogleProfile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoogleProfile>(create);
  static GoogleProfile _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get profileImage => $_getSZ(0);
  @$pb.TagNumber(1)
  set profileImage($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProfileImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfileImage() => clearField(1);
}

class JWTResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('JWTResult', createEmptyInstance: create)
    ..e<JWTType>(1, 'type', $pb.PbFieldType.OE, defaultOrMaker: JWTType.UNKNOWN_JWT_TYPE, valueOf: JWTType.valueOf, enumValues: JWTType.values)
    ..aOS(2, 'token')
    ..hasRequiredFields = false
  ;

  JWTResult._() : super();
  factory JWTResult() => create();
  factory JWTResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JWTResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  JWTResult clone() => JWTResult()..mergeFromMessage(this);
  JWTResult copyWith(void Function(JWTResult) updates) => super.copyWith((message) => updates(message as JWTResult));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static JWTResult create() => JWTResult._();
  JWTResult createEmptyInstance() => create();
  static $pb.PbList<JWTResult> createRepeated() => $pb.PbList<JWTResult>();
  @$core.pragma('dart2js:noInline')
  static JWTResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JWTResult>(create);
  static JWTResult _defaultInstance;

  @$pb.TagNumber(1)
  JWTType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(JWTType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class SignInResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignInResponse', createEmptyInstance: create)
    ..aOM<$2.CommonResult>(1, 'result', subBuilder: $2.CommonResult.create)
    ..pc<JWTResult>(2, 'jwt', $pb.PbFieldType.PM, subBuilder: JWTResult.create)
    ..hasRequiredFields = false
  ;

  SignInResponse._() : super();
  factory SignInResponse() => create();
  factory SignInResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SignInResponse clone() => SignInResponse()..mergeFromMessage(this);
  SignInResponse copyWith(void Function(SignInResponse) updates) => super.copyWith((message) => updates(message as SignInResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignInResponse create() => SignInResponse._();
  SignInResponse createEmptyInstance() => create();
  static $pb.PbList<SignInResponse> createRepeated() => $pb.PbList<SignInResponse>();
  @$core.pragma('dart2js:noInline')
  static SignInResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInResponse>(create);
  static SignInResponse _defaultInstance;

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
  $core.List<JWTResult> get jwt => $_getList(1);
}

class SignUpResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignUpResponse', createEmptyInstance: create)
    ..aOM<$2.CommonResult>(1, 'result', subBuilder: $2.CommonResult.create)
    ..pc<JWTResult>(2, 'jwt', $pb.PbFieldType.PM, subBuilder: JWTResult.create)
    ..hasRequiredFields = false
  ;

  SignUpResponse._() : super();
  factory SignUpResponse() => create();
  factory SignUpResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignUpResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  SignUpResponse clone() => SignUpResponse()..mergeFromMessage(this);
  SignUpResponse copyWith(void Function(SignUpResponse) updates) => super.copyWith((message) => updates(message as SignUpResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignUpResponse create() => SignUpResponse._();
  SignUpResponse createEmptyInstance() => create();
  static $pb.PbList<SignUpResponse> createRepeated() => $pb.PbList<SignUpResponse>();
  @$core.pragma('dart2js:noInline')
  static SignUpResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignUpResponse>(create);
  static SignUpResponse _defaultInstance;

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
  $core.List<JWTResult> get jwt => $_getList(1);
}

class FindPasswordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FindPasswordResponse', createEmptyInstance: create)
    ..aOM<$2.CommonResult>(1, 'result', subBuilder: $2.CommonResult.create)
    ..aOS(2, 'changePasswordUrl')
    ..hasRequiredFields = false
  ;

  FindPasswordResponse._() : super();
  factory FindPasswordResponse() => create();
  factory FindPasswordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindPasswordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  FindPasswordResponse clone() => FindPasswordResponse()..mergeFromMessage(this);
  FindPasswordResponse copyWith(void Function(FindPasswordResponse) updates) => super.copyWith((message) => updates(message as FindPasswordResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FindPasswordResponse create() => FindPasswordResponse._();
  FindPasswordResponse createEmptyInstance() => create();
  static $pb.PbList<FindPasswordResponse> createRepeated() => $pb.PbList<FindPasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static FindPasswordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindPasswordResponse>(create);
  static FindPasswordResponse _defaultInstance;

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
  $core.String get changePasswordUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set changePasswordUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChangePasswordUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearChangePasswordUrl() => clearField(2);
}

class TokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TokenResponse', createEmptyInstance: create)
    ..aOM<$2.CommonResult>(1, 'result', subBuilder: $2.CommonResult.create)
    ..aOM<JWTResult>(2, 'jwt', subBuilder: JWTResult.create)
    ..hasRequiredFields = false
  ;

  TokenResponse._() : super();
  factory TokenResponse() => create();
  factory TokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  TokenResponse clone() => TokenResponse()..mergeFromMessage(this);
  TokenResponse copyWith(void Function(TokenResponse) updates) => super.copyWith((message) => updates(message as TokenResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TokenResponse create() => TokenResponse._();
  TokenResponse createEmptyInstance() => create();
  static $pb.PbList<TokenResponse> createRepeated() => $pb.PbList<TokenResponse>();
  @$core.pragma('dart2js:noInline')
  static TokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenResponse>(create);
  static TokenResponse _defaultInstance;

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
  JWTResult get jwt => $_getN(1);
  @$pb.TagNumber(2)
  set jwt(JWTResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasJwt() => $_has(1);
  @$pb.TagNumber(2)
  void clearJwt() => clearField(2);
  @$pb.TagNumber(2)
  JWTResult ensureJwt() => $_ensure(1);
}

class CheckDuplicationEmailResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CheckDuplicationEmailResponse', createEmptyInstance: create)
    ..aOM<$2.CommonResult>(1, 'result', subBuilder: $2.CommonResult.create)
    ..e<IsDuplicationEmail>(2, 'isDuplicationEmail', $pb.PbFieldType.OE, defaultOrMaker: IsDuplicationEmail.UNKNOWN_IS_DUPLICATION_EMAIL, valueOf: IsDuplicationEmail.valueOf, enumValues: IsDuplicationEmail.values)
    ..hasRequiredFields = false
  ;

  CheckDuplicationEmailResponse._() : super();
  factory CheckDuplicationEmailResponse() => create();
  factory CheckDuplicationEmailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckDuplicationEmailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CheckDuplicationEmailResponse clone() => CheckDuplicationEmailResponse()..mergeFromMessage(this);
  CheckDuplicationEmailResponse copyWith(void Function(CheckDuplicationEmailResponse) updates) => super.copyWith((message) => updates(message as CheckDuplicationEmailResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckDuplicationEmailResponse create() => CheckDuplicationEmailResponse._();
  CheckDuplicationEmailResponse createEmptyInstance() => create();
  static $pb.PbList<CheckDuplicationEmailResponse> createRepeated() => $pb.PbList<CheckDuplicationEmailResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckDuplicationEmailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckDuplicationEmailResponse>(create);
  static CheckDuplicationEmailResponse _defaultInstance;

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
  IsDuplicationEmail get isDuplicationEmail => $_getN(1);
  @$pb.TagNumber(2)
  set isDuplicationEmail(IsDuplicationEmail v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsDuplicationEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsDuplicationEmail() => clearField(2);
}

