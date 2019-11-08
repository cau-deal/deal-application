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

  final bool isPhoneAuth;
  final bool isAccountAuth;

  Authenticated({
    this.accessToken,
    this.isPhoneAuth = false,
    this.isAccountAuth = false
  }) : super([accessToken, isPhoneAuth, isAccountAuth]);

  @override
  List<Object> get props => [accessToken];

  @override
  String toString() => 'Authenticated { token: $accessToken }';

  Authenticated update({
    bool isPhoneAuth,
    bool isAccountAuth,
  }) {
    return Authenticated(
      accessToken : this.accessToken,
      isPhoneAuth : isPhoneAuth ?? this.isPhoneAuth,
      isAccountAuth : isAccountAuth ?? this.isAccountAuth
    );
  }

}

class Unauthenticated extends AuthenticationState {
  @override
  String toString() => 'Unauthenticated';
}
