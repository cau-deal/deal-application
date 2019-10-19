import 'package:equatable/equatable.dart';

abstract class InquiryHistoryEvent extends Equatable {
  InquiryHistoryEvent([List props = const []]) : super(props);
}

class Fetch extends InquiryHistoryEvent {}