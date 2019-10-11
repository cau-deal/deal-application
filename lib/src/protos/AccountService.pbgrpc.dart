///
//  Generated code. Do not modify.
//  source: AccountService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'AccountService.pb.dart' as $0;
export 'AccountService.pb.dart';

class AccountServiceClient extends $grpc.Client {
  static final _$accountAuth =
      $grpc.ClientMethod<$0.AccountAuthRequest, $0.AccountAuthResponse>(
          '/AccountService/AccountAuth',
          ($0.AccountAuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AccountAuthResponse.fromBuffer(value));

  AccountServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.AccountAuthResponse> accountAuth(
      $0.AccountAuthRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$accountAuth, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'AccountService';

  AccountServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.AccountAuthRequest, $0.AccountAuthResponse>(
            'AccountAuth',
            accountAuth_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AccountAuthRequest.fromBuffer(value),
            ($0.AccountAuthResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AccountAuthResponse> accountAuth_Pre($grpc.ServiceCall call,
      $async.Future<$0.AccountAuthRequest> request) async {
    return accountAuth(call, await request);
  }

  $async.Future<$0.AccountAuthResponse> accountAuth(
      $grpc.ServiceCall call, $0.AccountAuthRequest request);
}
