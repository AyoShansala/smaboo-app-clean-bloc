// part of 'authentication_bloc.dart';

// abstract class AuthenticationEvent extends Equatable {
//   const AuthenticationEvent();
// }

// class AppStarted extends AuthenticationEvent {
//   final AuthenticationStatus authenticationStatus;

//   const AppStarted({this.authenticationStatus = AuthenticationStatus.unknown});

//   @override
//   List<Object?> get props => [authenticationStatus];
// }

// class LoggedIn extends AuthenticationEvent {
//   final String token;
//   final AuthenticationStatus authenticationStatus;

//   const LoggedIn({
//     required this.token,
//     required this.authenticationStatus,
//   });

//   @override
//   List<Object?> get props => [token];
// }

// class LoggedOut extends AuthenticationEvent {
//   const LoggedOut();

//   @override
//   List<Object?> get props => [];
// }

// class SessionExpired extends AuthenticationEvent {
//   const SessionExpired();

//   @override
//   List<Object?> get props => [];
// }
