import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/update_profile.dart';
import '../../../domain/usercases/update_profile_usecase.dart';

part 'update_profile_event.dart';
part 'update_profile_state.dart';

class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState>  {
  final GetUpdateProfile getUpdateProfile;

  UpdateProfileBloc({required this.getUpdateProfile}) : super(UpdateProfileState())  {
    on<EmailChange>(_onEmailChanged);
    on<AddressChanged>(_onAddressChanged);
    on<UsernameChanged>(_onUsernameChanged);
    on<UpdateProfileRequest>(_onUpdateProfile);
  }

  FutureOr<void> _onEmailChanged(EmailChange event, Emitter<UpdateProfileState> emit) {
    emit(state.copyWith(
        email: event.mail,
    ));
  }

  FutureOr<void> _onAddressChanged(AddressChanged event, Emitter<UpdateProfileState> emit) {
    emit(state.copyWith(
        address: event.address,
    ));
  }

  FutureOr<void> _onUsernameChanged(UsernameChanged event, Emitter<UpdateProfileState> emit) {
    emit(state.copyWith(
      username: event.name,
    ));
  }


  FutureOr<void> _onUpdateProfile(UpdateProfileRequest event, Emitter<UpdateProfileState> emit) async {

    emit(state.copyWith(status: UpdateProfileStatus.loading));

    // print("state.email ${state.email}");
    // print("state.email ${state.username}");
    // print("state.email ${state.address}");

    UpdateProfileDetail details = UpdateProfileDetail(
        email: "wad.shevon@gmail.com",
        phoneNo: "0778111085",
        name: state.username,
        address: "colombo",
        image: "https://smaboo.wearedesigners.net/img/system_images/default-profile.png"
    );

    Either<Failure, UpdateProfileClass> result = await getUpdateProfile(details);
    result.fold((failure) {
      String message = '';
      if (failure is ServerFailure) {
        message = failure.message;
      } else {
        message = "Error ===?";
      }
      emit(state.copyWith(status: UpdateProfileStatus.failure));
    }, (userDetails) {
      debugPrint('Working ${userDetails}');
      emit(state.copyWith(status: UpdateProfileStatus.success));
      //emit(state.copyWith(token: userDetails.token));
      //emit(state.copyWith(s))
    });
  }
}

