import 'package:bloc/bloc.dart';
import 'package:deal/src/protos/CommonResult.pbenum.dart';
import 'package:deal/src/protos/Data.pb.dart';
import 'package:deal/src/protos/MissionService.pb.dart';
import 'package:deal/src/repositories/mission_repository.dart';
import 'package:deal/src/repositories/user_repository.dart';
import 'package:deal/src/services/file_service.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'bloc.dart';

class MissionCreateBloc extends Bloc<MissionCreateEvent, MissionCreateState> {

  final MissionRepository missionRepository;
  final UserRepository userRepository;

  MissionCreateBloc({
    this.missionRepository,
    this.userRepository
  });

  @override
  get initialState => MissionCreateState.empty();

  @override
  Stream<MissionCreateState> mapEventToState(event) async* {
    if (event is TitleChanged) {
      yield* _mapTitleChangedToState(event);
    } else if (event is SubTitleChanged) {
      yield* _mapSubTitleChangedToState(event);
    } else if (event is DatePeriodChanged) {
      yield* _mapDatePeriodChangedToState(event);
    } else if (event is PointChanged){
      yield* _mapPointChangedToState(event);
    } else if (event is UnitChanged){
      yield* _mapUnitChangedToState(event);
    } else if (event is TotalCountChanged){
      yield* _mapTotalCntChangedToState(event);
    } else if (event is MissionTypeChanged) {
      yield* _mapMissionTypeChangedToState(event);
    } else if (event is DataTypeChanged){
      yield* _mapDataTypeChangedToState(event);
    } else if (event is MissionSummaryChanged){
      yield* _mapMissionSummaryChangedToState(event);
    } else if (event is MissionInstructionChanged){
      yield* _mapMissionInstChangedToState(event);
    } else if (event is MissionTermsChanged) {
      yield* _mapMissionTermsChangedToState(event);
    } else if (event is AgreementChanged) {
      yield* _mapAgreementChangedToState(event);
    } else if (event is MissionThumbnailChanged){
      yield* _mapMissionThumbnailChangedToState(event);
    } else if (event is SubmitPressed){
      yield* _mapSubmitPressedToState(event);
    }
  }

  Stream<MissionCreateState> _mapTitleChangedToState(TitleChanged evt) async* {
    yield state.update(title: evt.title);
  }

  Stream<MissionCreateState> _mapSubTitleChangedToState(SubTitleChanged evt) async* {
    yield state.update(subTitle: evt.subtitle);
  }

  Stream<MissionCreateState> _mapDatePeriodChangedToState(DatePeriodChanged evt) async* {
    yield state.update(startDate:evt.start, endDate: evt.end);
  }

  Stream<MissionCreateState> _mapPointChangedToState(PointChanged evt) async* {
    yield state.update(point: evt.point);
  }

  Stream<MissionCreateState> _mapUnitChangedToState(UnitChanged evt) async* {
    yield state.update(unit: evt.unit); // TODO 단위의 배수체크
  }

  Stream<MissionCreateState> _mapTotalCntChangedToState(TotalCountChanged evt) async* {
    yield state.update(totalCnt: evt.totalCnt); // TODO 단위의 배수체크
  }

  Stream<MissionCreateState> _mapMissionTypeChangedToState(MissionTypeChanged evt) async* {
    yield state.update(missionType: evt.missionType, dataType: DataType.UNKNOWN_DATA_TYPE);
  }

  Stream<MissionCreateState> _mapDataTypeChangedToState(DataTypeChanged evt) async* {
    yield state.update(dataType: evt.dataType);
  }

  Stream<MissionCreateState> _mapMissionSummaryChangedToState(MissionSummaryChanged evt) async* {
    yield state.update(missionSummary: evt.summary);
  }

  Stream<MissionCreateState> _mapMissionInstChangedToState(MissionInstructionChanged evt) async* {
    yield state.update(missionInst: evt.inst);
  }

  Stream<MissionCreateState> _mapMissionTermsChangedToState(MissionTermsChanged evt) async* {
    yield state.update(missionTerm: evt.terms);
  }

  Stream<MissionCreateState> _mapAgreementChangedToState(AgreementChanged evt) async* {
    yield state.update(isAgreeWithTerms: evt.agreeWithTerms);
  }

  Stream<MissionCreateState> _mapMissionThumbnailChangedToState(MissionThumbnailChanged evt) async* {
    try {

      FileService fs = FileService();
      state.update(
          isThumbnailValid:false,
          isThumbnailUploading: true,
          uploadPercentage: 0.0,
          thumbnailUri: ""
      );

      Response<String> res = await fs.uploadMissionThumbnail(
          accessToken: "",
          image: evt.asset,
          onProgress: (int sent, int total) {
            state.update(uploadPercentage: sent / total, isThumbnailUploading: !(sent / total == 1.0));
          }
      );
      print(res.data);
      yield state.update(
          isThumbnailValid: res.statusCode == 200 && res.data.isNotEmpty,
          thumbnailUri: res.data
      );
    } catch(e) {
      print(e);
      Fluttertoast.showToast(msg: "서버 에러 발생!");
      yield state.update(isThumbnailValid: false, uploadPercentage: 0.0, thumbnailUri: "");
    }
  }

  Stream<MissionCreateState> _mapSubmitPressedToState(SubmitPressed evt) async* {

    String accessToken = await userRepository.getAccessToken();

    try {
      if (await userRepository.hasToken()) {

        yield MissionCreateState.loading(
            state.title, state.subTitle,
            state.startDate, state.endDate,
            state.missionSummary, state.missionInstruction, state.missionTerms,
            state.point, state.unit, state.totalCount, state.thumbnailUri,
            state.missionType, state.dataType
        );

        RegisterMissionResponse res = await missionRepository.createMission(
            accessToken: accessToken,
            title: evt.title,
            subtitle: evt.subtitle,
            point: evt.point,
            unit: evt.unit,
            totalCnt: evt.totalCnt,
            start: evt.start,
            end: evt.end,
            missionType: evt.missionType,
            dataType: evt.dataType,
            summary: evt.summary,
            instruction: evt.instruction,
            terms: evt.terms,
            thumbnailUri: evt.thumbnailUri
        );

        if(res.result.resultCode == ResultCode.SUCCESS) {
          yield MissionCreateState.success(
              state.title, state.subTitle,
              state.startDate, state.endDate,
              state.missionSummary, state.missionInstruction, state.missionTerms,
              state.point, state.unit, state.totalCount, state.thumbnailUri,
              state.missionType, state.dataType
          );
        } else {
          print(res.result.message);
          yield MissionCreateState.failure(
              state.title, state.subTitle,
              state.startDate, state.endDate,
              state.missionSummary, state.missionInstruction, state.missionTerms,
              state.point, state.unit, state.totalCount, state.thumbnailUri,
              state.missionType, state.dataType
          );
        }

      } else {
        yield MissionCreateState.failure(
            state.title, state.subTitle,
            state.startDate, state.endDate,
            state.missionSummary, state.missionInstruction, state.missionTerms,
            state.point, state.unit, state.totalCount, state.thumbnailUri,
            state.missionType, state.dataType
        );
      }

    } catch(e) {
      yield MissionCreateState.failure(
          state.title, state.subTitle,
          state.startDate, state.endDate,
          state.missionSummary, state.missionInstruction, state.missionTerms,
          state.point, state.unit, state.totalCount, state.thumbnailUri,
          state.missionType, state.dataType
      );
    }
  }

}
