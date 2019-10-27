///
//  Generated code. Do not modify.
//  source: NotificationService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'NotificationService.pb.dart' as $0;
import 'Empty.pb.dart' as $1;
export 'NotificationService.pb.dart';

class NotificationServiceClient extends $grpc.Client {
  static final _$postNotice =
      $grpc.ClientMethod<$0.PostNoticeRequest, $0.PostNoticeResponse>(
          '/NotificationService/PostNotice',
          ($0.PostNoticeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PostNoticeResponse.fromBuffer(value));
  static final _$countNoReadPush =
      $grpc.ClientMethod<$1.Empty, $0.CountNoReadPushResponse>(
          '/NotificationService/CountNoReadPush',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CountNoReadPushResponse.fromBuffer(value));
  static final _$getPushList =
      $grpc.ClientMethod<$0.GetPushListRequest, $0.GetPushListResponse>(
          '/NotificationService/GetPushList',
          ($0.GetPushListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetPushListResponse.fromBuffer(value));
  static final _$readPush =
      $grpc.ClientMethod<$0.ReadPushRequest, $0.ReadPushResponse>(
          '/NotificationService/ReadPush',
          ($0.ReadPushRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ReadPushResponse.fromBuffer(value));
  static final _$transmitFCM =
      $grpc.ClientMethod<$0.TransmitFCMRequest, $0.TransmitFCMResponse>(
          '/NotificationService/TransmitFCM',
          ($0.TransmitFCMRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TransmitFCMResponse.fromBuffer(value));

  NotificationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.PostNoticeResponse> postNotice(
      $0.PostNoticeRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$postNotice, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.CountNoReadPushResponse> countNoReadPush(
      $1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$countNoReadPush, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetPushListResponse> getPushList(
      $0.GetPushListRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getPushList, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ReadPushResponse> readPush($0.ReadPushRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$readPush, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.TransmitFCMResponse> transmitFCM(
      $0.TransmitFCMRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$transmitFCM, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class NotificationServiceBase extends $grpc.Service {
  $core.String get $name => 'NotificationService';

  NotificationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PostNoticeRequest, $0.PostNoticeResponse>(
        'PostNotice',
        postNotice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PostNoticeRequest.fromBuffer(value),
        ($0.PostNoticeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.CountNoReadPushResponse>(
        'CountNoReadPush',
        countNoReadPush_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.CountNoReadPushResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetPushListRequest, $0.GetPushListResponse>(
            'GetPushList',
            getPushList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetPushListRequest.fromBuffer(value),
            ($0.GetPushListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadPushRequest, $0.ReadPushResponse>(
        'ReadPush',
        readPush_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadPushRequest.fromBuffer(value),
        ($0.ReadPushResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.TransmitFCMRequest, $0.TransmitFCMResponse>(
            'TransmitFCM',
            transmitFCM_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.TransmitFCMRequest.fromBuffer(value),
            ($0.TransmitFCMResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PostNoticeResponse> postNotice_Pre($grpc.ServiceCall call,
      $async.Future<$0.PostNoticeRequest> request) async {
    return postNotice(call, await request);
  }

  $async.Future<$0.CountNoReadPushResponse> countNoReadPush_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return countNoReadPush(call, await request);
  }

  $async.Future<$0.GetPushListResponse> getPushList_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetPushListRequest> request) async {
    return getPushList(call, await request);
  }

  $async.Future<$0.ReadPushResponse> readPush_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ReadPushRequest> request) async {
    return readPush(call, await request);
  }

  $async.Future<$0.TransmitFCMResponse> transmitFCM_Pre($grpc.ServiceCall call,
      $async.Future<$0.TransmitFCMRequest> request) async {
    return transmitFCM(call, await request);
  }

  $async.Future<$0.PostNoticeResponse> postNotice(
      $grpc.ServiceCall call, $0.PostNoticeRequest request);
  $async.Future<$0.CountNoReadPushResponse> countNoReadPush(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.GetPushListResponse> getPushList(
      $grpc.ServiceCall call, $0.GetPushListRequest request);
  $async.Future<$0.ReadPushResponse> readPush(
      $grpc.ServiceCall call, $0.ReadPushRequest request);
  $async.Future<$0.TransmitFCMResponse> transmitFCM(
      $grpc.ServiceCall call, $0.TransmitFCMRequest request);
}
