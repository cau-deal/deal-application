///
//  Generated code. Do not modify.
//  source: AuthService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'AuthService.pb.dart' as $0;
import 'Empty.pb.dart' as $1;
export 'AuthService.pb.dart';

class AuthServiceClient extends $grpc.Client {
  static final _$signInWithCredential =
      $grpc.ClientMethod<$0.SignInRequest, $0.SignInResponse>(
          '/AuthService/SignInWithCredential',
          ($0.SignInRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SignInResponse.fromBuffer(value));
  static final _$signInWithToken =
      $grpc.ClientMethod<$1.Empty, $0.SignInResponse>(
          '/AuthService/SignInWithToken',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SignInResponse.fromBuffer(value));
  static final _$signUp =
      $grpc.ClientMethod<$0.SignUpRequest, $0.SignUpResponse>(
          '/AuthService/SignUp',
          ($0.SignUpRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SignUpResponse.fromBuffer(value));
  static final _$findPassword =
      $grpc.ClientMethod<$0.FindPasswordRequest, $0.FindPasswordResponse>(
          '/AuthService/FindPassword',
          ($0.FindPasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FindPasswordResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.SignInResponse> signInWithCredential(
      $0.SignInRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$signInWithCredential, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SignInResponse> signInWithToken($1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$signInWithToken, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SignUpResponse> signUp($0.SignUpRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$signUp, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.FindPasswordResponse> findPassword(
      $0.FindPasswordRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$findPassword, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignInRequest, $0.SignInResponse>(
        'SignInWithCredential',
        signInWithCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignInRequest.fromBuffer(value),
        ($0.SignInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.SignInResponse>(
        'SignInWithToken',
        signInWithToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.SignInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignUpRequest, $0.SignUpResponse>(
        'SignUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignUpRequest.fromBuffer(value),
        ($0.SignUpResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.FindPasswordRequest, $0.FindPasswordResponse>(
            'FindPassword',
            findPassword_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.FindPasswordRequest.fromBuffer(value),
            ($0.FindPasswordResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SignInResponse> signInWithCredential_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignInRequest> request) async {
    return signInWithCredential(call, await request);
  }

  $async.Future<$0.SignInResponse> signInWithToken_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return signInWithToken(call, await request);
  }

  $async.Future<$0.SignUpResponse> signUp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignUpRequest> request) async {
    return signUp(call, await request);
  }

  $async.Future<$0.FindPasswordResponse> findPassword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FindPasswordRequest> request) async {
    return findPassword(call, await request);
  }

  $async.Future<$0.SignInResponse> signInWithCredential(
      $grpc.ServiceCall call, $0.SignInRequest request);
  $async.Future<$0.SignInResponse> signInWithToken(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.SignUpResponse> signUp(
      $grpc.ServiceCall call, $0.SignUpRequest request);
  $async.Future<$0.FindPasswordResponse> findPassword(
      $grpc.ServiceCall call, $0.FindPasswordRequest request);
}
