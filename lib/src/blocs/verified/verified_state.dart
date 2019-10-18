import 'package:deal/src/protos/UserService.pbgrpc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class VerificationState extends Equatable {
  VerificationState([List props = const []]) : super(props);
}

class Verified extends VerificationState {

  final bool accountVerified;
  final bool phoneVerified;

  final Profile profile;

  Verified({ this.accountVerified, this.phoneVerified, this.profile });

  @override
  String toString() => 'Verified';
}

class Verifying extends VerificationState {
  @override
  String toString() => 'Now Verifying';
}

class UnVerified extends VerificationState {

  final String userEmail;

  UnVerified({this.userEmail});

  @override
  String toString() => 'Unverified';
}