import 'package:deal/src/protos/Profile.pb.dart';
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
  final Profile profile;

  final bool isPhoneAuth;
  final bool isAccountAuth;

  Authenticated({
    this.accessToken,
    this.isPhoneAuth = false,
    this.isAccountAuth = false,
    this.profile
  }) : super([accessToken, profile, isPhoneAuth, isAccountAuth]);

  @override
  List<Object> get props => [accessToken, isPhoneAuth, isAccountAuth, profile];

  @override
  String toString() => 'Authenticated { token: $accessToken }';

  Authenticated update({
    bool isPhoneAuth,
    bool isAccountAuth,
    Profile profile,
  }) {
    return Authenticated(
      accessToken : this.accessToken,
      profile: profile ?? this.profile,
      isPhoneAuth : isPhoneAuth ?? this.isPhoneAuth,
      isAccountAuth : isAccountAuth ?? this.isAccountAuth,
    );
  }

}

class Unauthenticated extends AuthenticationState {
  @override
  String toString() => 'Unauthenticated';
}
