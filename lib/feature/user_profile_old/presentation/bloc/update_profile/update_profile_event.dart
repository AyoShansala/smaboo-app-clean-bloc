part of 'update_profile_bloc.dart';

abstract class UpdateProfileEvent extends Equatable {
  // final UpdateProfileStatus status;

  const UpdateProfileEvent();
  @override
  List<Object> get props => [];
}

class EmailChange extends UpdateProfileEvent {
  final String mail;

  const EmailChange(this.mail) : super();

  @override
  List<Object> get props => [mail];
}

class AddressChanged extends UpdateProfileEvent {
  final String address;

  const AddressChanged(this.address) : super();

  @override
  List<Object> get props => [address];
}

class UsernameChanged extends UpdateProfileEvent {
  final String name;

  const UsernameChanged(this.name) : super();

  @override
  List<Object> get props => [name];
}

class UpdateProfileRequest extends UpdateProfileEvent {

  const UpdateProfileRequest();

  @override
  List<Object> get props => [];
}