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
import 'Empty.pb.dart' as $1;
export 'MissionService.pb.dart';

class MissionServiceClient extends $grpc.Client {
  static final _$registerMission =
      $grpc.ClientMethod<$0.RegisterMissionRequest, $0.RegisterMissionResponse>(
          '/MissionService/RegisterMission',
          ($0.RegisterMissionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RegisterMissionResponse.fromBuffer(value));
  static final _$searchMission =
      $grpc.ClientMethod<$0.SearchMissionRequest, $0.SearchMissionResponse>(
          '/MissionService/SearchMission',
          ($0.SearchMissionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SearchMissionResponse.fromBuffer(value));
  static final _$searchMissionWithId =
      $grpc.ClientMethod<$0.MissionIdRequest, $0.SearchMissionWithIdResponse>(
          '/MissionService/SearchMissionWithId',
          ($0.MissionIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SearchMissionWithIdResponse.fromBuffer(value));
  static final _$searchRegisterMissionRelevantMe = $grpc.ClientMethod<
          $0.SearchMissionRelevantMeRequest,
          $0.SearchRegisterMissionRelevantMeResponse>(
      '/MissionService/SearchRegisterMissionRelevantMe',
      ($0.SearchMissionRelevantMeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SearchRegisterMissionRelevantMeResponse.fromBuffer(value));
  static final _$searchConductMissionRelevantMe = $grpc.ClientMethod<
          $0.SearchMissionRelevantMeRequest,
          $0.SearchConductMissionRelevantMeResponse>(
      '/MissionService/SearchConductMissionRelevantMe',
      ($0.SearchMissionRelevantMeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SearchConductMissionRelevantMeResponse.fromBuffer(value));
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
  static final _$countFetchMission =
      $grpc.ClientMethod<$1.Empty, $0.CountFetchMissionResponse>(
          '/MissionService/CountFetchMission',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CountFetchMissionResponse.fromBuffer(value));
  static final _$getMissionOwnerInfo =
      $grpc.ClientMethod<$0.MissionIdRequest, $0.GetMissionOwnerInfoResponse>(
          '/MissionService/GetMissionOwnerInfo',
          ($0.MissionIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetMissionOwnerInfoResponse.fromBuffer(value));
  static final _$getParticipatedMissionState = $grpc.ClientMethod<
          $0.MissionIdRequest, $0.GetParticipatedMissionStateResponse>(
      '/MissionService/GetParticipatedMissionState',
      ($0.MissionIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetParticipatedMissionStateResponse.fromBuffer(value));
  static final _$getLabels =
      $grpc.ClientMethod<$0.MissionIdRequest, $0.GetLabelsResponse>(
          '/MissionService/GetLabels',
          ($0.MissionIdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetLabelsResponse.fromBuffer(value));
  static final _$getLabelingResult =
      $grpc.ClientMethod<$0.UrlRequest, $0.GetLabelingResultResponse>(
          '/MissionService/GetLabelingResult',
          ($0.UrlRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetLabelingResultResponse.fromBuffer(value));
  static final _$getRecommendMissionImages =
      $grpc.ClientMethod<$1.Empty, $0.GetRecommendMissionImagesResponse>(
          '/MissionService/GetRecommendMissionImages',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetRecommendMissionImagesResponse.fromBuffer(value));
  static final _$decidePurchase =
      $grpc.ClientMethod<$0.DecidePurchaseRequest, $0.DecidePurchaseResponse>(
          '/MissionService/DecidePurchase',
          ($0.DecidePurchaseRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DecidePurchaseResponse.fromBuffer(value));

  MissionServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.RegisterMissionResponse> registerMission(
      $0.RegisterMissionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$registerMission, $async.Stream.fromIterable([request]),
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

  $grpc.ResponseFuture<$0.SearchMissionWithIdResponse> searchMissionWithId(
      $0.MissionIdRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$searchMissionWithId, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SearchRegisterMissionRelevantMeResponse>
      searchRegisterMissionRelevantMe($0.SearchMissionRelevantMeRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(_$searchRegisterMissionRelevantMe,
        $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SearchConductMissionRelevantMeResponse>
      searchConductMissionRelevantMe($0.SearchMissionRelevantMeRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$searchConductMissionRelevantMe, $async.Stream.fromIterable([request]),
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

  $grpc.ResponseFuture<$0.CountFetchMissionResponse> countFetchMission(
      $1.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$countFetchMission, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetMissionOwnerInfoResponse> getMissionOwnerInfo(
      $0.MissionIdRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getMissionOwnerInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetParticipatedMissionStateResponse>
      getParticipatedMissionState($0.MissionIdRequest request,
          {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getParticipatedMissionState, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetLabelsResponse> getLabels(
      $0.MissionIdRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getLabels, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetLabelingResultResponse> getLabelingResult(
      $0.UrlRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getLabelingResult, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.GetRecommendMissionImagesResponse>
      getRecommendMissionImages($1.Empty request, {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getRecommendMissionImages, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DecidePurchaseResponse> decidePurchase(
      $0.DecidePurchaseRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$decidePurchase, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class MissionServiceBase extends $grpc.Service {
  $core.String get $name => 'MissionService';

  MissionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RegisterMissionRequest,
            $0.RegisterMissionResponse>(
        'RegisterMission',
        registerMission_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RegisterMissionRequest.fromBuffer(value),
        ($0.RegisterMissionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SearchMissionRequest, $0.SearchMissionResponse>(
            'SearchMission',
            searchMission_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SearchMissionRequest.fromBuffer(value),
            ($0.SearchMissionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MissionIdRequest,
            $0.SearchMissionWithIdResponse>(
        'SearchMissionWithId',
        searchMissionWithId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MissionIdRequest.fromBuffer(value),
        ($0.SearchMissionWithIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchMissionRelevantMeRequest,
            $0.SearchRegisterMissionRelevantMeResponse>(
        'SearchRegisterMissionRelevantMe',
        searchRegisterMissionRelevantMe_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SearchMissionRelevantMeRequest.fromBuffer(value),
        ($0.SearchRegisterMissionRelevantMeResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchMissionRelevantMeRequest,
            $0.SearchConductMissionRelevantMeResponse>(
        'SearchConductMissionRelevantMe',
        searchConductMissionRelevantMe_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SearchMissionRelevantMeRequest.fromBuffer(value),
        ($0.SearchConductMissionRelevantMeResponse value) =>
            value.writeToBuffer()));
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
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.CountFetchMissionResponse>(
        'CountFetchMission',
        countFetchMission_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.CountFetchMissionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MissionIdRequest,
            $0.GetMissionOwnerInfoResponse>(
        'GetMissionOwnerInfo',
        getMissionOwnerInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MissionIdRequest.fromBuffer(value),
        ($0.GetMissionOwnerInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MissionIdRequest,
            $0.GetParticipatedMissionStateResponse>(
        'GetParticipatedMissionState',
        getParticipatedMissionState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MissionIdRequest.fromBuffer(value),
        ($0.GetParticipatedMissionStateResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MissionIdRequest, $0.GetLabelsResponse>(
        'GetLabels',
        getLabels_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MissionIdRequest.fromBuffer(value),
        ($0.GetLabelsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UrlRequest, $0.GetLabelingResultResponse>(
        'GetLabelingResult',
        getLabelingResult_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UrlRequest.fromBuffer(value),
        ($0.GetLabelingResultResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.Empty, $0.GetRecommendMissionImagesResponse>(
            'GetRecommendMissionImages',
            getRecommendMissionImages_Pre,
            false,
            false,
            ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
            ($0.GetRecommendMissionImagesResponse value) =>
                value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DecidePurchaseRequest,
            $0.DecidePurchaseResponse>(
        'DecidePurchase',
        decidePurchase_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DecidePurchaseRequest.fromBuffer(value),
        ($0.DecidePurchaseResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.RegisterMissionResponse> registerMission_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RegisterMissionRequest> request) async {
    return registerMission(call, await request);
  }

  $async.Future<$0.SearchMissionResponse> searchMission_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SearchMissionRequest> request) async {
    return searchMission(call, await request);
  }

  $async.Future<$0.SearchMissionWithIdResponse> searchMissionWithId_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MissionIdRequest> request) async {
    return searchMissionWithId(call, await request);
  }

  $async.Future<$0.SearchRegisterMissionRelevantMeResponse>
      searchRegisterMissionRelevantMe_Pre($grpc.ServiceCall call,
          $async.Future<$0.SearchMissionRelevantMeRequest> request) async {
    return searchRegisterMissionRelevantMe(call, await request);
  }

  $async.Future<$0.SearchConductMissionRelevantMeResponse>
      searchConductMissionRelevantMe_Pre($grpc.ServiceCall call,
          $async.Future<$0.SearchMissionRelevantMeRequest> request) async {
    return searchConductMissionRelevantMe(call, await request);
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

  $async.Future<$0.CountFetchMissionResponse> countFetchMission_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return countFetchMission(call, await request);
  }

  $async.Future<$0.GetMissionOwnerInfoResponse> getMissionOwnerInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MissionIdRequest> request) async {
    return getMissionOwnerInfo(call, await request);
  }

  $async.Future<$0.GetParticipatedMissionStateResponse>
      getParticipatedMissionState_Pre($grpc.ServiceCall call,
          $async.Future<$0.MissionIdRequest> request) async {
    return getParticipatedMissionState(call, await request);
  }

  $async.Future<$0.GetLabelsResponse> getLabels_Pre($grpc.ServiceCall call,
      $async.Future<$0.MissionIdRequest> request) async {
    return getLabels(call, await request);
  }

  $async.Future<$0.GetLabelingResultResponse> getLabelingResult_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UrlRequest> request) async {
    return getLabelingResult(call, await request);
  }

  $async.Future<$0.GetRecommendMissionImagesResponse>
      getRecommendMissionImages_Pre(
          $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getRecommendMissionImages(call, await request);
  }

  $async.Future<$0.DecidePurchaseResponse> decidePurchase_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DecidePurchaseRequest> request) async {
    return decidePurchase(call, await request);
  }

  $async.Future<$0.RegisterMissionResponse> registerMission(
      $grpc.ServiceCall call, $0.RegisterMissionRequest request);
  $async.Future<$0.SearchMissionResponse> searchMission(
      $grpc.ServiceCall call, $0.SearchMissionRequest request);
  $async.Future<$0.SearchMissionWithIdResponse> searchMissionWithId(
      $grpc.ServiceCall call, $0.MissionIdRequest request);
  $async.Future<$0.SearchRegisterMissionRelevantMeResponse>
      searchRegisterMissionRelevantMe(
          $grpc.ServiceCall call, $0.SearchMissionRelevantMeRequest request);
  $async.Future<$0.SearchConductMissionRelevantMeResponse>
      searchConductMissionRelevantMe(
          $grpc.ServiceCall call, $0.SearchMissionRelevantMeRequest request);
  $async.Future<$0.GetAssignedMissionResponse> getAssignedMission(
      $grpc.ServiceCall call, $0.MissionIdRequest request);
  $async.Future<$0.SubmitCollectMissionOutputResponse>
      submitCollectMissionOutput(
          $grpc.ServiceCall call, $0.SubmitCollectMissionOutputRequest request);
  $async.Future<$0.SubmitProcessMissionOutputResponse>
      submitProcessMissionOutput(
          $grpc.ServiceCall call, $0.SubmitProcessMissionOutputRequest request);
  $async.Future<$0.CountFetchMissionResponse> countFetchMission(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.GetMissionOwnerInfoResponse> getMissionOwnerInfo(
      $grpc.ServiceCall call, $0.MissionIdRequest request);
  $async.Future<$0.GetParticipatedMissionStateResponse>
      getParticipatedMissionState(
          $grpc.ServiceCall call, $0.MissionIdRequest request);
  $async.Future<$0.GetLabelsResponse> getLabels(
      $grpc.ServiceCall call, $0.MissionIdRequest request);
  $async.Future<$0.GetLabelingResultResponse> getLabelingResult(
      $grpc.ServiceCall call, $0.UrlRequest request);
  $async.Future<$0.GetRecommendMissionImagesResponse> getRecommendMissionImages(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.DecidePurchaseResponse> decidePurchase(
      $grpc.ServiceCall call, $0.DecidePurchaseRequest request);
}
