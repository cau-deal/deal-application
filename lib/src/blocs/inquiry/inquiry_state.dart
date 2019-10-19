import 'package:meta/meta.dart';

@immutable
class InquiryState {
  final bool isTitleValid;
  final bool isContentValid;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  bool get isFormValid => isTitleValid && isContentValid;

  InquiryState({
    @required this.isTitleValid,
    @required this.isContentValid,
    @required this.isSubmitting,
    @required this.isSuccess,
    @required this.isFailure,
  });

  factory InquiryState.empty() {
    return InquiryState(
      isTitleValid: false,
      isContentValid: false,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory InquiryState.loading() {
    return InquiryState(
      isTitleValid: true,
      isContentValid: true,
      isSubmitting: true,
      isSuccess: false,
      isFailure: false,
    );
  }

  factory InquiryState.failure() {
    return InquiryState(
      isTitleValid: true,
      isContentValid: true,
      isSubmitting: false,
      isSuccess: false,
      isFailure: true,
    );
  }

  factory InquiryState.success() {
    return InquiryState(
      isTitleValid: true,
      isContentValid: true,
      isSubmitting: false,
      isSuccess: true,
      isFailure: false,
    );
  }

  InquiryState update({
    bool isEmailValid,
    bool isPasswordValid,
  }) {
    return copyWith(
      isEmailValid: isEmailValid,
      isPasswordValid: isPasswordValid,
      isSubmitting: false,
      isSuccess: false,
      isFailure: false,
    );
  }

  InquiryState copyWith({
    bool isEmailValid,
    bool isPasswordValid,
    bool isSubmitEnabled,
    bool isSubmitting,
    bool isSuccess,
    bool isFailure,
  }) {
    return InquiryState(
      isTitleValid: isEmailValid ?? this.isTitleValid,
      isContentValid: isPasswordValid ?? this.isContentValid,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      isFailure: isFailure ?? this.isFailure,
    );
  }

  @override
  String toString() {
    return '''InquiryState {
      isEmailValid: $isTitleValid,
      isPasswordValid: $isContentValid,
      isSubmitting: $isSubmitting,
      isSuccess: $isSuccess,
      isFailure: $isFailure,
    }''';
  }
}