import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class VerificationState extends Equatable {
  VerificationState([List props = const []]) : super(props);
}

class PhoneVerified extends VerificationState {
  @override
  String toString() => 'Phone Verified';
}

class AccountVerified extends VerificationState {
  @override
  String toString() => 'Phone Verified';
}

class Verified extends VerificationState {
  @override
  String toString() => 'Both Verified';
}

class Verifying extends VerificationState {
  @override
  String toString() => 'Now Verifying';
}

class UnVerified extends VerificationState {
  @override
  String toString() => 'Unauthenticated';
}