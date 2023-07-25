// import 'dart:async';
// import 'package:equatable/equatable.dart';


// part 'authentication_event.dart';
// part 'authentication_state.dart';

// class AuthenticationBloc
//     extends HydratedBloc<AuthenticationEvent, AuthenticationState> {
//   AuthenticationBloc() : super(AuthenticationState()) {
//     on<LoggedIn>(_loggedIn, transformer: Transformer.throttleDroppable());
//     on<SessionExpired>(_sessionExpired, transformer: Transformer.throttleDroppable());
//     on<LoggedOut>(_loggedOut, transformer: Transformer.throttleDroppable());
//   }

//   FutureOr<void> _loggedIn(LoggedIn event, Emitter<AuthenticationState> emit) {
//     emit(state.copyWith(
//         authenticationStatus: event.authenticationStatus,
//         token: event.token));
//   }

//   FutureOr<void> _sessionExpired(SessionExpired event, Emitter<AuthenticationState> emit) {
//     emit(state.copyWith(
//       authenticationStatus: AuthenticationStatus.sessionExpired,
//     ));
//   }

//   Future<FutureOr<void>> _loggedOut(LoggedOut event, Emitter<AuthenticationState> emit) async {
//     emit(state.copyWith(
//       authenticationStatus: AuthenticationStatus.logOutInProgress,
//     ));

//     await Future.delayed(Duration(seconds: 3));

//     emit(state.copyWith(
//       authenticationStatus: AuthenticationStatus.unauthenticated,
//     ));
//   }

//   @override
//   AuthenticationState? fromJson(Map<String, dynamic> json) {
//     AuthenticationStatus authStatus = AuthenticationStatus.unknown;

//     String authStatusString = json['authenticationStatus'];
//     if (authStatusString == 'AuthenticationStatus.authenticated') {
//       authStatus = AuthenticationStatus.authenticated;
//     } else if (authStatusString == 'AuthenticationStatus.unauthenticated') {
//       authStatus = AuthenticationStatus.unauthenticated;
//     } else {
//       authStatus = AuthenticationStatus.unknown;
//     }

//     return AuthenticationState(
//       token: json['token'],
//       authenticationStatus: authStatus,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(AuthenticationState state) {
//     return {
//       'token': state.token,
//       'authenticationStatus': state.authenticationStatus.toString(),
//     };
//   }
// }
