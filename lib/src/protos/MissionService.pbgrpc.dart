///
//  Generated code. Do not modify.
//  source: MissionService.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'MissionService.pb.dart' as $0;
export 'MissionService.pb.dart';

class MissionServiceClient extends $grpc.Client {
  static final _$registMission =
      $grpc.ClientMethod<$0.RegistMissionRequest, $0.RegistMissionResponse>(
          '/MissionService/RegistMission',
          ($0.RegistMissionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RegistMissionResponse.fromBuffer(value));
  static final _$searchMission =
      $grpc.ClientMethod<$0.SearchMissionRequest, $0.SearchMissionResponse>(
          '/MissionService/SearchMission',
          ($0.SearchMissionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SearchMissionResponse.fromBuffer(value));
  static final _$searchMissionWithId =
      $grpc.ClientMethod<$0.MissionIdRequest, $0.SearchMissionWithIdReponse>(
          '/MissionService/SearchMissionWithId',
          ($0.MissionIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SearchMissionWithIdReponse.fromBuffer(value));
  static final _$searchMissionReleventMe = $grpc.ClientMethod<
          $0.SearchMissionReleventMeRequest,
          $0.SearchMissionReleventMeResponse>(
      '/MissionService/SearchMissionReleventMe',
      ($0.SearchMissionReleventMeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SearchMissionReleventMeResponse.fromBuffer(value));
  static final _$getAssignedMission =
      $grpc.ClientMethod<$0.MissionIdRequest, $0.GetAssignedMissionResponse>(
          '/MissionService/GetAssignedMission',
          ($0.MissionIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetAssignedMissionResponse.fromBuffer(value));
  static final _$submitCollectMissionOutput = $grpc.ClientMethod<
          $0.SubmitCollectMissionOutputRequest,
          $0.SubmitCollectMissionOutputResponse>(
      '/MissionService/SubmitCollectMissionOutput',
      ($0.SubmitCollectMissionOutputRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SubmitCollectMissionOutputResponse.fromBuffer(value));
  static final _$submitProcessMissionOutput = $grpc.ClientMethod<
          $0.SubmitProcessMissionOutputRequest,
          $0.SubmitProcessMissionOutputResponse>(
      '/MissionService/SubmitProcessMissionOutput',
      ($0.SubmitProcessMissionOutputRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SubmitProcessMissionOutputResponse.fromBuffer(value));

  MissionServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.RegistMissionResponse> registMission(
      $0.RegistMissionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$registMission, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SearchMissionResponse> searchMission(
      $0.SearchMissionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$searchMission, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SearchMissionWithIdReponse> searchMissionWithId(
      $0.MissionIdRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$searchMissionWithId, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SearchMissionReleventMeResponse>
      searchMissionReleventMe($0.SearchMissionReleventMeRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$searchMissionReleventMe, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetAssignedMissionResponse> getAssignedMission(
      $0.MissionIdRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getAssignedMission, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SubmitCollectMissionOutputResponse>
      submitCollectMissionOutput($0.SubmitCollectMissionOutputRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$submitCollectMissionOutput, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SubmitProcessMissionOutputResponse>
      submitProcessMissionOutput($0.SubmitProcessMissionOutputRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$submitProcessMissionOutput, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class MissionServiceBase extends $grpc.Service {
  $core.String get $name => 'MissionService';

  MissionServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.RegistMissionRequest, $0.RegistMissionResponse>(
            'RegistMission',
            registMission_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RegistMissionRequest.fromBuffer(value),
            ($0.RegistMissionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SearchMissionRequest, $0.SearchMissionResponse>(
            'SearchMission',
            searchMission_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SearchMissionRequest.fromBuffer(value),
            ($0.SearchMissionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.MissionIdRequest, $0.SearchMissionWithIdReponse>(
            'SearchMissionWithId',
            searchMissionWithId_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.MissionIdRequest.fromBuffer(value),
            ($0.SearchMissionWithIdReponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchMissionReleventMeRequest,
            $0.SearchMissionReleventMeResponse>(
        'SearchMissionReleventMe',
        searchMissionReleventMe_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SearchMissionReleventMeRequest.fromBuffer(value),
        ($0.SearchMissionReleventMeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.MissionIdRequest, $0.GetAssignedMissionResponse>(
            'GetAssignedMission',
            getAssignedMission_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.MissionIdRequest.fromBuffer(value),
            ($0.GetAssignedMissionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SubmitCollectMissionOutputRequest,
            $0.SubmitCollectMissionOutputResponse>(
        'SubmitCollectMissionOutput',
        submitCollectMissionOutput_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SubmitCollectMissionOutputRequest.fromBuffer(value),
        ($0.SubmitCollectMissionOutputResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SubmitProcessMissionOutputRequest,
            $0.SubmitProcessMissionOutputResponse>(
        'SubmitProcessMissionOutput',
        submitProcessMissionOutput_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SubmitProcessMissionOutputRequest.fromBuffer(value),
        ($0.SubmitProcessMissionOutputResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$0.RegistMissionResponse> registMission_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RegistMissionRequest> request) async {
    return registMission(call, await request);
  }

  $async.Future<$0.SearchMissionResponse> searchMission_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SearchMissionRequest> request) async {
    return searchMission(call, await request);
  }

  $async.Future<$0.SearchMissionWithIdReponse> searchMissionWithId_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MissionIdRequest> request) async {
    return searchMissionWithId(call, await request);
  }

  $async.Future<$0.SearchMissionReleventMeResponse> searchMissionReleventMe_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SearchMissionReleventMeRequest> request) async {
    return searchMissionReleventMe(call, await request);
  }

  $async.Future<$0.GetAssignedMissionResponse> getAssignedMission_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MissionIdRequest> request) async {
    return getAssignedMission(call, await request);
  }

  $async.Future<$0.SubmitCollectMissionOutputResponse>
      submitCollectMissionOutput_Pre($grpc.ServiceCall call,
          $async.Future<$0.SubmitCollectMissionOutputRequest> request) async {
    return submitCollectMissionOutput(call, await request);
  }

  $async.Future<$0.SubmitProcessMissionOutputResponse>
      submitProcessMissionOutput_Pre($grpc.ServiceCall call,
          $async.Future<$0.SubmitProcessMissionOutputRequest> request) async {
    return submitProcessMissionOutput(call, await request);
  }

  $async.Future<$0.RegistMissionResponse> registMission(
      $grpc.ServiceCall call, $0.RegistMissionRequest request);
  $async.Future<$0.SearchMissionResponse> searchMission(
      $grpc.ServiceCall call, $0.SearchMissionRequest request);
  $async.Future<$0.SearchMissionWithIdReponse> searchMissionWithId(
      $grpc.ServiceCall call, $0.MissionIdRequest request);
  $async.Future<$0.SearchMissionReleventMeResponse> searchMissionReleventMe(
      $grpc.ServiceCall call, $0.SearchMissionReleventMeRequest request);
  $async.Future<$0.GetAssignedMissionResponse> getAssignedMission(
      $grpc.ServiceCall call, $0.MissionIdRequest request);
  $async.Future<$0.SubmitCollectMissionOutputResponse>
      submitCollectMissionOutput(
          $grpc.ServiceCall call, $0.SubmitCollectMissionOutputRequest request);
  $async.Future<$0.SubmitProcessMissionOutputResponse>
      submitProcessMissionOutput(
          $grpc.ServiceCall call, $0.SubmitProcessMissionOutputRequest request);
}
