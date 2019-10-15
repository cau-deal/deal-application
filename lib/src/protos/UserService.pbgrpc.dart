///
//  Generated code. Do not modify.
//  source: UserService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'UserService.pb.dart' as $0;
import 'Empty.pb.dart' as $1;
export 'UserService.pb.dart';

class UserServiceClient extends $grpc.Client {
  static final _$changePassword =
      $grpc.ClientMethod<$0.ChangePasswordRequest, $0.ChangePasswordResponse>(
          '/UserService/ChangePassword',
          ($0.ChangePasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ChangePasswordResponse.fromBuffer(value));
  static final _$changePasswordWithEmail = $grpc.ClientMethod<
          $0.ChangePasswordWithEmailRequest, $0.ChangePasswordResponse>(
      '/UserService/ChangePasswordWithEmail',
      ($0.ChangePasswordWithEmailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ChangePasswordResponse.fromBuffer(value));
  static final _$lookUpUserInfo =
      $grpc.ClientMethod<$1.Empty, $0.LookUpUserInfoResponse>(
          '/UserService/LookUpUserInfo',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LookUpUserInfoResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.ChangePasswordResponse> changePassword(
      $0.ChangePasswordRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$changePassword, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ChangePasswordResponse> changePasswordWithEmail(
      $0.ChangePasswordWithEmailRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$changePasswordWithEmail, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.LookUpUserInfoResponse> lookUpUserInfo(
      $1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$lookUpUserInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ChangePasswordRequest,
            $0.ChangePasswordResponse>(
        'ChangePassword',
        changePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChangePasswordRequest.fromBuffer(value),
        ($0.ChangePasswordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangePasswordWithEmailRequest,
            $0.ChangePasswordResponse>(
        'ChangePasswordWithEmail',
        changePasswordWithEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChangePasswordWithEmailRequest.fromBuffer(value),
        ($0.ChangePasswordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.LookUpUserInfoResponse>(
        'LookUpUserInfo',
        lookUpUserInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.LookUpUserInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ChangePasswordResponse> changePassword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ChangePasswordRequest> request) async {
    return changePassword(call, await request);
  }

  $async.Future<$0.ChangePasswordResponse> changePasswordWithEmail_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ChangePasswordWithEmailRequest> request) async {
    return changePasswordWithEmail(call, await request);
  }

  $async.Future<$0.LookUpUserInfoResponse> lookUpUserInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return lookUpUserInfo(call, await request);
  }

  $async.Future<$0.ChangePasswordResponse> changePassword(
      $grpc.ServiceCall call, $0.ChangePasswordRequest request);
  $async.Future<$0.ChangePasswordResponse> changePasswordWithEmail(
      $grpc.ServiceCall call, $0.ChangePasswordWithEmailRequest request);
  $async.Future<$0.LookUpUserInfoResponse> lookUpUserInfo(
      $grpc.ServiceCall call, $1.Empty request);
}