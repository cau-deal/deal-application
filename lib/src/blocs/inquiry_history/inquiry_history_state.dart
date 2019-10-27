import 'package:deal/src/protos/DealService.pbgrpc.dart';
import 'package:equatable/equatable.dart';

abstract class InquiryHistoryState extends Equatable {
  InquiryHistoryState();

  @override
  List<Object> get props => [];
}

class InquiryUninitialized extends InquiryHistoryState {
  final List<InquiryWithAnswer> inquiries;
  InquiryUninitialized({this.inquiries});
}

class InquiryError extends InquiryHistoryState {}

class InquiryLoaded extends InquiryHistoryState {
  final List<InquiryWithAnswer> inquiries;
  final bool hasReachedMax;

  InquiryLoaded({this.inquiries, this.hasReachedMax});

  InquiryLoaded copyWith({
    List<InquiryWithAnswer> inquiries,
    bool hasReachedMax,
  }) {
    return InquiryLoaded(
      inquiries: inquiries ?? this.inquiries,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [inquiries, hasReachedMax];

  @override
  String toString() => 'PostLoaded { posts: ${inquiries.length}, hasReachedMax: $hasReachedMax }';
}
