///
//  Generated code. Do not modify.
//  source: PhoneService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'PhoneService.pb.dart' as $0;
export 'PhoneService.pb.dart';

class PhoneServiceClient extends $grpc.Client {
  static final _$phoneAuth =
      $grpc.ClientMethod<$0.PhoneAuthRequest, $0.PhoneAuthResponse>(
          '/PhoneService/PhoneAuth',
          ($0.PhoneAuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PhoneAuthResponse.fromBuffer(value));

  PhoneServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.PhoneAuthResponse> phoneAuth(
      $0.PhoneAuthRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$phoneAuth, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class PhoneServiceBase extends $grpc.Service {
  $core.String get $name => 'PhoneService';

  PhoneServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PhoneAuthRequest, $0.PhoneAuthResponse>(
        'PhoneAuth',
        phoneAuth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PhoneAuthRequest.fromBuffer(value),
        ($0.PhoneAuthResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PhoneAuthResponse> phoneAuth_Pre($grpc.ServiceCall call,
      $async.Future<$0.PhoneAuthRequest> request) async {
    return phoneAuth(call, await request);
  }

  $async.Future<$0.PhoneAuthResponse> phoneAuth(
      $grpc.ServiceCall call, $0.PhoneAuthRequest request);
}
