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
export 'NotificationService.pb.dart';

class NotificationServiceClient extends $grpc.Client {
  static final _$postNotice =
      $grpc.ClientMethod<$0.PostNoticeRequest, $0.PostNoticeResponse>(
          '/NotificationService/PostNotice',
          ($0.PostNoticeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PostNoticeResponse.fromBuffer(value));

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
  }

  $async.Future<$0.PostNoticeResponse> postNotice_Pre($grpc.ServiceCall call,
      $async.Future<$0.PostNoticeRequest> request) async {
    return postNotice(call, await request);
  }

  $async.Future<$0.PostNoticeResponse> postNotice(
      $grpc.ServiceCall call, $0.PostNoticeRequest request);
}
