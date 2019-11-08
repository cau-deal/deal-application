import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

enum VerificationType { PHONE, ACCOUNT }

@immutable
abstract class AuthenticationEvent extends Equatable {
  AuthenticationEvent([List props = const []]) : super(props);
}

class AuthInitialized extends AuthenticationEvent {
  @override
  String toString() => 'AppStarted';
}

class LoggedIn extends AuthenticationEvent {
  final token;

  LoggedIn({this.token});

  @override
  String toString() => 'LoggedIn';
}

class LoggedOut extends AuthenticationEvent {
  @override
  String toString() => 'LoggedOut';
}

class VerificationRequest extends AuthenticationEvent {

  final VerificationType type;
  final String data;

  VerificationRequest(this.type, this.data);

  @override
  String toString() => 'AppStarted';
}

class VerificationFailed extends AuthenticationEvent {
  final String reason;
  final VerificationType type;

  VerificationFailed(this.type, this.reason);

  @override
  String toString() => 'VerifyPhone';
}

class VerificationSuccess extends AuthenticationEvent {
  final VerificationType type;
  final String data;

  VerificationSuccess(this.type, this.data);

  @override
  String toString() => 'LoggedOut';
}
