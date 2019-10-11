///
//  Generated code. Do not modify.
//  source: PointService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'Empty.pb.dart' as $0;
import 'PointService.pb.dart' as $1;
export 'PointService.pb.dart';

class PointServiceClient extends $grpc.Client {
  static final _$lookUpBalance =
      $grpc.ClientMethod<$0.Empty, $1.LookUpBalanceResponse>(
          '/PointService/LookUpBalance',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.LookUpBalanceResponse.fromBuffer(value));
  static final _$lookUpPlusPointHistory = $grpc.ClientMethod<
          $1.LookUpPointHistoryRequest, $1.LookUpPointHistoryResponse>(
      '/PointService/LookUpPlusPointHistory',
      ($1.LookUpPointHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.LookUpPointHistoryResponse.fromBuffer(value));
  static final _$lookUpMinusPointHistory = $grpc.ClientMethod<
          $1.LookUpPointHistoryRequest, $1.LookUpPointHistoryResponse>(
      '/PointService/LookUpMinusPointHistory',
      ($1.LookUpPointHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.LookUpPointHistoryResponse.fromBuffer(value));
  static final _$deposit =
      $grpc.ClientMethod<$1.DepositRequest, $1.DepositResponse>(
          '/PointService/Deposit',
          ($1.DepositRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DepositResponse.fromBuffer(value));
  static final _$withdraw =
      $grpc.ClientMethod<$1.WithdrawRequest, $1.WithdrawResponse>(
          '/PointService/Withdraw',
          ($1.WithdrawRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.WithdrawResponse.fromBuffer(value));

  PointServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$1.LookUpBalanceResponse> lookUpBalance($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$lookUpBalance, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.LookUpPointHistoryResponse> lookUpPlusPointHistory(
      $1.LookUpPointHistoryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$lookUpPlusPointHistory, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.LookUpPointHistoryResponse> lookUpMinusPointHistory(
      $1.LookUpPointHistoryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$lookUpMinusPointHistory, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.DepositResponse> deposit($1.DepositRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$deposit, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$1.WithdrawResponse> withdraw($1.WithdrawRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$withdraw, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class PointServiceBase extends $grpc.Service {
  $core.String get $name => 'PointService';

  PointServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.LookUpBalanceResponse>(
        'LookUpBalance',
        lookUpBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.LookUpBalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LookUpPointHistoryRequest,
            $1.LookUpPointHistoryResponse>(
        'LookUpPlusPointHistory',
        lookUpPlusPointHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.LookUpPointHistoryRequest.fromBuffer(value),
        ($1.LookUpPointHistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LookUpPointHistoryRequest,
            $1.LookUpPointHistoryResponse>(
        'LookUpMinusPointHistory',
        lookUpMinusPointHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.LookUpPointHistoryRequest.fromBuffer(value),
        ($1.LookUpPointHistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DepositRequest, $1.DepositResponse>(
        'Deposit',
        deposit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DepositRequest.fromBuffer(value),
        ($1.DepositResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.WithdrawRequest, $1.WithdrawResponse>(
        'Withdraw',
        withdraw_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.WithdrawRequest.fromBuffer(value),
        ($1.WithdrawResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.LookUpBalanceResponse> lookUpBalance_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return lookUpBalance(call, await request);
  }

  $async.Future<$1.LookUpPointHistoryResponse> lookUpPlusPointHistory_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.LookUpPointHistoryRequest> request) async {
    return lookUpPlusPointHistory(call, await request);
  }

  $async.Future<$1.LookUpPointHistoryResponse> lookUpMinusPointHistory_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.LookUpPointHistoryRequest> request) async {
    return lookUpMinusPointHistory(call, await request);
  }

  $async.Future<$1.DepositResponse> deposit_Pre(
      $grpc.ServiceCall call, $async.Future<$1.DepositRequest> request) async {
    return deposit(call, await request);
  }

  $async.Future<$1.WithdrawResponse> withdraw_Pre(
      $grpc.ServiceCall call, $async.Future<$1.WithdrawRequest> request) async {
    return withdraw(call, await request);
  }

  $async.Future<$1.LookUpBalanceResponse> lookUpBalance(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.LookUpPointHistoryResponse> lookUpPlusPointHistory(
      $grpc.ServiceCall call, $1.LookUpPointHistoryRequest request);
  $async.Future<$1.LookUpPointHistoryResponse> lookUpMinusPointHistory(
      $grpc.ServiceCall call, $1.LookUpPointHistoryRequest request);
  $async.Future<$1.DepositResponse> deposit(
      $grpc.ServiceCall call, $1.DepositRequest request);
  $async.Future<$1.WithdrawResponse> withdraw(
      $grpc.ServiceCall call, $1.WithdrawRequest request);
}
