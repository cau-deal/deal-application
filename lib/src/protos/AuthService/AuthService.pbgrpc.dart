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
export 'AuthService.pb.dart';

class AuthServiceClient extends $grpc.Client {
  static final _$signInWithCredential =
      $grpc.ClientMethod<$0.SignInRequest, $0.SignInResponse>(
          '/deal.AuthService/signInWithCredential',
          ($0.SignInRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SignInResponse.fromBuffer(value));
  static final _$signInWithToken =
      $grpc.ClientMethod<$0.Empty, $0.SignInResponse>(
          '/deal.AuthService/signInWithToken',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SignInResponse.fromBuffer(value));
  static final _$signUp =
      $grpc.ClientMethod<$0.SignUpRequest, $0.SignUpResponse>(
          '/deal.AuthService/signUp',
          ($0.SignUpRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SignUpResponse.fromBuffer(value));

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

  $grpc.ResponseFuture<$0.SignInResponse> signInWithToken($0.Empty request,
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
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'deal.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignInRequest, $0.SignInResponse>(
        'signInWithCredential',
        signInWithCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignInRequest.fromBuffer(value),
        ($0.SignInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.SignInResponse>(
        'signInWithToken',
        signInWithToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.SignInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignUpRequest, $0.SignUpResponse>(
        'signUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignUpRequest.fromBuffer(value),
        ($0.SignUpResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SignInResponse> signInWithCredential_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignInRequest> request) async {
    return signInWithCredential(call, await request);
  }

  $async.Future<$0.SignInResponse> signInWithToken_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return signInWithToken(call, await request);
  }

  $async.Future<$0.SignUpResponse> signUp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignUpRequest> request) async {
    return signUp(call, await request);
  }

  $async.Future<$0.SignInResponse> signInWithCredential(
      $grpc.ServiceCall call, $0.SignInRequest request);
  $async.Future<$0.SignInResponse> signInWithToken(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.SignUpResponse> signUp(
      $grpc.ServiceCall call, $0.SignUpRequest request);
}
