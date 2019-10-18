import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AuthenticationState extends Equatable {
  AuthenticationState([List props = const []]) : super(props);
}

class Uninitialized extends AuthenticationState {
  @override
  String toString() => 'Uninitialized';
}

class Authenticating extends AuthenticationState {
  @override
  String toString() => 'Authenticating';
}

class Authenticated extends AuthenticationState {
  final String accessToken;

  Authenticated({ this.accessToken }) : super([accessToken]);

  @override
  List<Object> get props => [accessToken];

  @override
  String toString() => 'Authenticated { token: $accessToken }';
}

class Unauthenticated extends AuthenticationState {
  @override
  String toString() => 'Unauthenticated';
}