import 'package:deal/src/protos/Data.pb.dart';
import 'package:deal/src/protos/MissionService.pbenum.dart';
import 'package:deal/src/protos/Profile.pb.dart';
import 'package:meta/meta.dart';

@immutable
class MissionDetailState {

  final String title;
  final String subTitle;

  final DateTime startDate;
  final DateTime endDate;

  final String missionSummary;
  final String missionInstruction;
  final String missionTerms;

  final bool isAgreeWithTerms;

  final int point;
  final int unit;
  final int totalCount;

  final String thumbnailUri;

  final MissionType missionType;
  final DataType dataType;
  final MissionState missionState;

  final Profile owner;
  final ConductMissionState conductMissionState;

  final bool isSuccess;
  final bool isFailure;

  MissionDetailState({
    @required this.title,
    @required this.subTitle,

    @required this.point,
    @required this.unit,
    @required this.totalCount,

    @required this.startDate,
    @required this.endDate,

    @required this.thumbnailUri,

    @required this.missionSummary,
    @required this.missionInstruction,
    @required this.missionTerms,

    @required this.isAgreeWithTerms,

    @required this.missionState,
    @required this.missionType,
    @required this.dataType,

    @required this.owner,
    @required this.conductMissionState,

    @required this.isSuccess,
    @required this.isFailure,
  });

  factory MissionDetailState.empty() {
    return MissionDetailState(
      title: "",
      subTitle: "",
      point: 0,
      unit: 1,
      totalCount: 0,
      thumbnailUri: "",
      missionState: MissionState.UNKNOWN_MISSION_STATE,
      missionType: MissionType.UNKNOWN_MISSION_TYPE,
      dataType: DataType.UNKNOWN_DATA_TYPE,
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      owner: Profile(),
      conductMissionState: ConductMissionState.UNKNOWN_CONDUCT_MISSION_STATE,
      missionSummary: "\n",
      missionInstruction: "\n",
      missionTerms: "\n",
      isAgreeWithTerms: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory MissionDetailState.loading(
      String title, String subTitle, DateTime s, DateTime e, Profile owner,
      String missionSummary, String missionInstruction, String missionTerms,
      int point, int unit, int totalCnt, String thumbnailUri,
      MissionType missionType, DataType dataType, MissionState missionState, ConductMissionState conductMissionState
      ) {
    return MissionDetailState(
      title: title,
      subTitle: subTitle,

      point: point,
      unit: unit,
      totalCount: totalCnt,

      startDate: s,
      endDate: e,

      missionType: missionType,
      dataType: dataType,

      owner: owner,

      thumbnailUri: thumbnailUri,

      missionSummary: missionSummary,
      missionInstruction: missionInstruction,
      missionTerms: missionTerms,

      missionState: missionState,
      conductMissionState: conductMissionState,

      isAgreeWithTerms: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory MissionDetailState.failure(
      String title, String subTitle, DateTime s, DateTime e, Profile owner,
      String missionSummary, String missionInstruction, String missionTerms,
      int point, int unit, int totalCnt, String thumbnailUri,
      MissionType missionType, DataType dataType, MissionState missionState, ConductMissionState conductMissionState
      ) {
    return MissionDetailState(
      title: title,
      subTitle: subTitle,

      point: point,
      unit: unit,
      totalCount: totalCnt,

      startDate: s,
      endDate: e,

      missionType: missionType,
      dataType: dataType,
      owner: owner,

      thumbnailUri: thumbnailUri,

      missionSummary: missionSummary,
      missionInstruction: missionInstruction,
      missionTerms: missionTerms,

      missionState: missionState,
      conductMissionState: conductMissionState,

      isAgreeWithTerms: false,
      isSuccess: false,
      isFailure: true,
    );
  }

  factory MissionDetailState.success(
      String title, String subTitle, DateTime s, DateTime e, Profile owner,
      String missionSummary, String missionInstruction, String missionTerms,
      int point, int unit, int totalCnt, String thumbnailUri,
      MissionType missionType, DataType dataType,
      MissionState missionState, ConductMissionState conductMissionState
      ) {
    return MissionDetailState(
      title: title,
      subTitle: subTitle,

      point: point,
      unit: unit,
      totalCount: totalCnt,

      startDate: s,
      endDate: e,

      missionType: missionType,
      dataType: dataType,
      owner: owner,

      thumbnailUri: thumbnailUri,

      missionSummary: missionSummary,
      missionInstruction: missionInstruction,
      missionTerms: missionTerms,

      missionState: missionState,
      conductMissionState: conductMissionState,

      isAgreeWithTerms: false,
      isSuccess: true,
      isFailure: false,
    );
  }

  MissionDetailState update({
    String title,
    String subTitle,
    int point,
    int unit,
    int totalCnt,

    Profile owner,

    String thumbnailUri,
    MissionType missionType,

    MissionState missionState,
    ConductMissionState conductMissionState,

    DataType dataType,
    DateTime startDate,
    DateTime endDate,

    String missionSummary,
    String missionInst,
    String missionTerm,

    bool isAgreeWithTerms,
  }) {
    return copyWith(
      title: title,
      subTitle: subTitle,

      point: point,
      unit: unit,
      totalCnt: totalCnt,
      thumbnailUri: thumbnailUri,
      missionType: missionType,
      dataType: dataType,

      missionState: missionState,
      conductMissionState: conductMissionState,

      owner: owner,

      startDate: startDate,
      endDate: endDate,

      missionSummary: missionSummary,
      missionInst: missionInst,
      missionTerm: missionTerm,

      isAgreeWithTerms: isAgreeWithTerms,

      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  MissionDetailState copyWith({
    String title,
    String subTitle,
    int point,
    int unit,
    int totalCnt,
    String thumbnailUri,
    MissionType missionType,
    DataType dataType,

    MissionState missionState,
    ConductMissionState conductMissionState,

    Profile owner,

    DateTime startDate,
    DateTime endDate,

    String missionSummary,
    String missionInst,
    String missionTerm,

    bool isAgreeWithTerms,

    bool isSubmitting,
    bool isSuccess,
    bool isFailure,
  }) {
    return MissionDetailState(
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      point: point ?? this.point,
      unit: unit ?? this.unit,
      totalCount: totalCnt ?? this.totalCount,
      thumbnailUri: thumbnailUri ?? this.thumbnailUri,
      missionType: missionType ?? this.missionType,
      dataType: dataType ?? this.dataType,
      owner: owner ?? this.owner,

      missionState: missionState ?? this.missionState,
      conductMissionState: conductMissionState ?? this.conductMissionState,

      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,

      missionSummary: missionSummary ?? this.missionSummary,
      missionInstruction: missionInst ?? this.missionInstruction,
      missionTerms: missionTerm ?? this.missionTerms,

      isAgreeWithTerms: isAgreeWithTerms ?? this.isAgreeWithTerms,

      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
    );
  }

  @override
  String toString() {
    return '''MissionDetailState {
      isTitleValid : $title,
      isSubTitleValid : $subTitle,
      isPointValid : $point,
      isUnitValid : $unit,
      isTotalCountValid : $totalCount,
      isCategoryValid : $missionType,
      isDataTypeValid : $dataType,
      s : $startDate,
      e : $endDate,      
      thumbnailUri : $thumbnailUri,      
      isMissionSummaryValid : $missionSummary,
      isMissionInstructionValid : $missionInstruction,
      isMissionTermValid : $missionTerms,
      isAgreeWithTerms : $isAgreeWithTerms,
      isSuccess : $isSuccess,
      isFailure : $isFailure,
    }''';
  }
}
