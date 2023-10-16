part of 'update_profile_bloc.dart';

enum UpdateProfileStatus { initial, loading, success, failure, unknown }

class UpdateProfileState extends Equatable {
  final UpdateProfileStatus status;
  final String email;
  final String username;
  final String address;
  final String image;

  const UpdateProfileState({
    this.email = '',
    this.username = '',
    this.address = '',
    this.image = '',
    this.status = UpdateProfileStatus.unknown,
  });

  @override
  List<Object> get props => [status, email, username, address, image];

  UpdateProfileState copyWith(
      {UpdateProfileStatus? status,
        String? email,
        String? username,
        String? address,
        String? image}) {
    return UpdateProfileState(
      email: email ?? this.email,
      username: username ?? this.username,
      address: address ?? this.address,
      image: image ?? this.image,
      status: status ?? this.status,
    );
  }
}
