import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/profile.dart';
import '../../domain/usercases/profile_usecase.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetUserProfile getUserProfile;

  ProfileBloc({required this.getUserProfile}) : super(ProfileState(
      status: ProfileStatus.initial,
     )) {
    on<ProfileEvent>(profileDetailList);
  }

  Future<void> profileDetailList(ProfileEvent event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: ProfileStatus.loading));
    Either<Failure, ProfileClass> result = await getUserProfile('');
    result.fold(
          (failure) {
        String message = '';
        if (failure is ServerFailure) {
          message = failure.message;
        } else {
          message = "LocaleKeys.features_bookings_ui_failedToLoadUpcomingBookins.tr()"; // LOCALE: Add locale
        }
        emit(state.copyWith(status: ProfileStatus.failure, errorMessage: message));
      },
          (profileData) {
            return emit(state.copyWith(
              status: ProfileStatus.success,
              profileDetails: profileData,
            ));
      },
    );
  }
}
