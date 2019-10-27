import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class RegisterEvent extends Equatable {
  RegisterEvent([List props = const []]) : super(props);
}

class EmailChanged extends RegisterEvent {
  final String email;

  EmailChanged({@required this.email}) : super([email]);

  @override
  String toString() => 'EmailChanged { email :$email }';
}

class PasswordChanged extends RegisterEvent {
  final String password;

  PasswordChanged({@required this.password}) : super([password]);

  @override
  String toString() => 'PasswordChanged { password: $password }';
}

class Password2Changed extends RegisterEvent {
  final String password1;
  final String password2;

  Password2Changed({@required this.password1, @required this.password2}) : super([password1, password2]);

  @override
  String toString() => 'PasswordChanged { password: $password1, $password2 }';
}

class AgreementChanged extends RegisterEvent {
  final bool checked;

  AgreementChanged({@required this.checked}) : super([checked]);

  @override
  String toString() => 'AgreementChecked { value: $checked }';
}

class Submitted extends RegisterEvent {
  final String email;
  final String password;
  final bool agreeWithTerms;

  Submitted({@required this.email, @required this.password, @required this.agreeWithTerms}) : super([email, password, agreeWithTerms]);

  @override
  String toString() {
    return 'Submitted { email: $email, password: $password, agreeWithTerms: $agreeWithTerms }';
  }
}
