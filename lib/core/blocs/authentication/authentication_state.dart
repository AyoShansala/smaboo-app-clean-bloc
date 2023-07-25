// part of 'authentication_bloc.dart';

// enum AuthenticationStatus { unknown, authenticated, unauthenticated,  sessionExpired, logOutInProgress, authenticatedWithDefaultPassword }

// class AuthenticationState extends Equatable {
//   final String token;
//   final AuthenticationStatus authenticationStatus;

//   const AuthenticationState({
//       this.token = '',
//       this.authenticationStatus = AuthenticationStatus.unknown,
//   });

//   AuthenticationState copyWith({
//     AuthenticationStatus? authenticationStatus,
//     String? token,
//   }) {
//     return AuthenticationState(
//         token: token ?? this.token,
//         authenticationStatus: authenticationStatus ?? this.authenticationStatus,
//     );
//   }

//   @override
//   List<Object?> get props => [token, authenticationStatus];
// }
