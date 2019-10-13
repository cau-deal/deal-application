///
//  Generated code. Do not modify.
//  source: DealService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'DealService.pb.dart' as $0;
import 'Empty.pb.dart' as $1;
export 'DealService.pb.dart';

class DealServiceClient extends $grpc.Client {
  static final _$inquiry =
      $grpc.ClientMethod<$0.InquiryRequest, $0.InquiryResponse>(
          '/DealService/Inquiry',
          ($0.InquiryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.InquiryResponse.fromBuffer(value));
  static final _$lookUpInquiry =
      $grpc.ClientMethod<$1.Empty, $0.LookUpInquiryResponse>(
          '/DealService/LookUpInquiry',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LookUpInquiryResponse.fromBuffer(value));
  static final _$accuse =
      $grpc.ClientMethod<$0.AccuseRequest, $0.AccuseResponse>(
          '/DealService/Accuse',
          ($0.AccuseRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AccuseResponse.fromBuffer(value));

  DealServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.InquiryResponse> inquiry($0.InquiryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$inquiry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.LookUpInquiryResponse> lookUpInquiry($1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$lookUpInquiry, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AccuseResponse> accuse($0.AccuseRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$accuse, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class DealServiceBase extends $grpc.Service {
  $core.String get $name => 'DealService';

  DealServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.InquiryRequest, $0.InquiryResponse>(
        'Inquiry',
        inquiry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InquiryRequest.fromBuffer(value),
        ($0.InquiryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.LookUpInquiryResponse>(
        'LookUpInquiry',
        lookUpInquiry_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.LookUpInquiryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccuseRequest, $0.AccuseResponse>(
        'Accuse',
        accuse_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AccuseRequest.fromBuffer(value),
        ($0.AccuseResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.InquiryResponse> inquiry_Pre(
      $grpc.ServiceCall call, $async.Future<$0.InquiryRequest> request) async {
    return inquiry(call, await request);
  }

  $async.Future<$0.LookUpInquiryResponse> lookUpInquiry_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return lookUpInquiry(call, await request);
  }

  $async.Future<$0.AccuseResponse> accuse_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AccuseRequest> request) async {
    return accuse(call, await request);
  }

  $async.Future<$0.InquiryResponse> inquiry(
      $grpc.ServiceCall call, $0.InquiryRequest request);
  $async.Future<$0.LookUpInquiryResponse> lookUpInquiry(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.AccuseResponse> accuse(
      $grpc.ServiceCall call, $0.AccuseRequest request);
}
