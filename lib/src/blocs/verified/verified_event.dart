import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'bloc.dart';

@immutable
abstract class VerificationEvent extends Equatable {
  VerificationEvent([List props = const []]) : super(props);
}

class VerificationInitialized extends VerificationEvent {
  @override
  String toString() => 'AppStarted';
}

class VerificationRequest extends VerificationEvent {

  final VerificationType type;
  final String data;

  VerificationRequest(this.type, this.data);

  @override
  String toString() => 'AppStarted';
}

class VerificationFailed extends VerificationEvent {
  final String reason;
  final VerificationType type;

  VerificationFailed(this.type, this.reason);

  @override
  String toString() => 'VerifyPhone';
}

class VerificationSuccess extends VerificationEvent {
  final VerificationType type;
  final String data;

  VerificationSuccess(this.type, this.data);

  @override
  String toString() => 'LoggedOut';
}
