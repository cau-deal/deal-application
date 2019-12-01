import 'package:deal/src/protos/Data.pb.dart';
import 'package:deal/src/protos/MissionService.pbenum.dart';
import 'package:meta/meta.dart';

@immutable
class MissionCreateState {

  // TODO bitmask 처리

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

  final List<String> labels;
  final List<String> images;

  final bool isThumbnailValid;
  final String thumbnailUri;
  final double uploadPercentage;

  final MissionType missionType;
  final DataType dataType;
  final bool isDataUploaded;

  final bool isThumbnailUploading;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  bool get isCountValid => (unit != null) && (totalCount != null) && (totalCount % unit == 0);
  bool get isFormValid => title.isNotEmpty && subTitle.isNotEmpty && (point != null) && (unit != null) && (totalCount != null)
      && missionType != MissionType.UNKNOWN_MISSION_TYPE && dataType != DataType.UNKNOWN_DATA_TYPE
      && isThumbnailValid && startDate != null && endDate != null
      && missionInstruction.isNotEmpty && missionSummary.isNotEmpty && missionTerms.isNotEmpty
      && isAgreeWithTerms && thumbnailUri.isNotEmpty && isCountValid && isDataUploaded;

  MissionCreateState({
    @required this.title,
    @required this.subTitle,

    @required this.point,
    @required this.unit,
    @required this.totalCount,

    @required this.startDate,
    @required this.endDate,

    @required this.isThumbnailValid,

    @required this.uploadPercentage,
    @required this.thumbnailUri,

    @required this.missionSummary,
    @required this.missionInstruction,
    @required this.missionTerms,
    @required this.isAgreeWithTerms,

    @required this.missionType,
    @required this.dataType,
    @required this.isDataUploaded,

    @required this.images,
    @required this.labels,

    @required this.isThumbnailUploading,
    @required this.isSubmitting,
    @required this.isSuccess,
    @required this.isFailure,
  });

  factory MissionCreateState.empty() {
    return MissionCreateState(
      title: "",
      subTitle: "",
      point: 0,
      unit: 1,
      totalCount: 0,
      uploadPercentage: 0.0,
      thumbnailUri: "",
      missionType: MissionType.UNKNOWN_MISSION_TYPE,
      dataType: DataType.UNKNOWN_DATA_TYPE,
      startDate: null,
      endDate: null,
      isThumbnailValid: false,
      missionSummary: "",
      missionInstruction: "",
      missionTerms: "",

      isDataUploaded: false,
      images: [],
      labels: [],

      isAgreeWithTerms: false,
      isThumbnailUploading: false,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory MissionCreateState.loading(
      String title, String subTitle, DateTime s, DateTime e,
      List<String> images, List<String> labels,
      String missionSummary, String missionInstruction, String missionTerms,
      int point, int unit, int totalCnt, String thumbnailUri,
      MissionType missionType, DataType dataType
      ) {
    return MissionCreateState(
      title: title,
      subTitle: subTitle,

      point: point,
      unit: unit,
      totalCount: totalCnt,

      startDate: s,
      endDate: e,

      missionType: missionType,
      dataType: dataType,

      thumbnailUri: thumbnailUri,
      uploadPercentage: 100.0,

      missionSummary: missionSummary,
      missionInstruction: missionInstruction,
      missionTerms: missionTerms,

      images: images,
      labels: labels,

      isThumbnailValid: true,
      isAgreeWithTerms: true,
      isDataUploaded: true,
      isThumbnailUploading: false,
      isSubmitting: true,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory MissionCreateState.failure(
      String title, String subTitle, DateTime s, DateTime e,
      List<String> images, List<String> labels,
      String missionSummary, String missionInstruction, String missionTerms,
      int point, int unit, int totalCnt, String thumbnailUri,
      MissionType missionType, DataType dataType
      ) {
    return MissionCreateState(
      title: title,
      subTitle: subTitle,

      point: point,
      unit: unit,
      totalCount: totalCnt,

      startDate: s,
      endDate: e,

      missionType: missionType,
      dataType: dataType,

      thumbnailUri: thumbnailUri,
      uploadPercentage: 100.0,

      images: images,
      labels: labels,

      missionSummary: missionSummary,
      missionInstruction: missionInstruction,
      missionTerms: missionTerms,

      isThumbnailValid: true,
      isAgreeWithTerms: true,
      isDataUploaded: true,
      isThumbnailUploading: false,
      isSubmitting: false,
      isSuccess: false,
      isFailure: true,
    );
  }

  factory MissionCreateState.success(
      String title, String subTitle, DateTime s, DateTime e,
      List<String> images, List<String> labels,
      String missionSummary, String missionInstruction, String missionTerms,
      int point, int unit, int totalCnt, String thumbnailUri,
      MissionType missionType, DataType dataType
      ) {
    return MissionCreateState(
      title: title,
      subTitle: subTitle,

      point: point,
      unit: unit,
      totalCount: totalCnt,

      startDate: s,
      endDate: e,

      images: images,
      labels: labels,

      missionType: missionType,
      dataType: dataType,

      thumbnailUri: thumbnailUri,
      uploadPercentage: 100.0,

      missionSummary: missionSummary,
      missionInstruction: missionInstruction,
      missionTerms: missionTerms,

      isThumbnailValid: true,
      isAgreeWithTerms: true,
      isDataUploaded: true,
      isThumbnailUploading: false,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
    );
  }

  MissionCreateState update({
    String title,
    String subTitle,
    int point,
    int unit,
    int totalCnt,
    double uploadPercentage,
    String thumbnailUri,
    MissionType missionType,
    DataType dataType,

    DateTime startDate,
    DateTime endDate,

    String missionSummary,
    String missionInst,
    String missionTerm,

    List<String> labels,
    List<String> images,

    bool isDataUploaded,
    bool isThumbnailValid,
    bool isAgreeWithTerms,
    bool isThumbnailUploading
  }) {
    return copyWith(
      title: title,
      subTitle: subTitle,

      point: point,
      unit: unit,
      totalCnt: totalCnt,
      uploadPercentage: uploadPercentage,
      thumbnailUri: thumbnailUri,
      missionType: missionType,
      dataType: dataType,

      startDate: startDate,
      endDate: endDate,

      missionSummary: missionSummary,
      missionInst: missionInst,
      missionTerm: missionTerm,

      isThumbnailValid: isThumbnailValid,
      isAgreeWithTerms: isAgreeWithTerms,
      isThumbnailUploading: isThumbnailUploading,

      isDataUploaded: isDataUploaded,
      images: images,
      labels: labels,

      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  MissionCreateState copyWith({
    String title,
    String subTitle,
    int point,
    int unit,
    int totalCnt,
    double uploadPercentage,
    String thumbnailUri,
    MissionType missionType,
    DataType dataType,

    DateTime startDate,
    DateTime endDate,

    String missionSummary,
    String missionInst,
    String missionTerm,

    bool isAgreeWithTerms,
    bool isDataUploaded,

    List<String> labels,
    List<String> images,

    bool isThumbnailValid,
    bool isThumbnailUploading,
    bool isSubmitting,
    bool isSuccess,
    bool isFailure,
  }) {
    return MissionCreateState(
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      point: point ?? this.point,
      unit: unit ?? this.unit,
      totalCount: totalCnt ?? this.totalCount,
      uploadPercentage: uploadPercentage ?? this.uploadPercentage,
      thumbnailUri: thumbnailUri ?? this.thumbnailUri,
      missionType: missionType ?? this.missionType,
      dataType: dataType ?? this.dataType,

      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,

      labels: labels ?? this.labels,
      images: images ?? this.images,

      missionSummary: missionSummary ?? this.missionSummary,
      missionInstruction: missionInst ?? this.missionInstruction,
      missionTerms: missionTerm ?? this.missionTerms,

      isThumbnailValid: isThumbnailValid ?? this.isThumbnailValid,
      isAgreeWithTerms: isAgreeWithTerms ?? this.isAgreeWithTerms,
      isThumbnailUploading: isThumbnailUploading ?? this.isThumbnailUploading,

      isDataUploaded: isDataUploaded ?? this.isDataUploaded,

      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
    );
  }

  @override
  String toString() {
    return '''MissionCreateState {
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
      isThumbnailValid: $isThumbnailValid,
      isMissionSummaryValid : $missionSummary,
      isMissionInstructionValid : $missionInstruction,
      isMissionTermValid : $missionTerms,
      isAgreeWithTerms : $isAgreeWithTerms,
      isSubmitting : $isSubmitting,
      isSuccess : $isSuccess,
      isFailure : $isFailure,
    }''';
  }
}
