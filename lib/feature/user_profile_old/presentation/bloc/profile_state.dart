part of 'profile_bloc.dart';

enum ProfileStatus { initial, loading, success, failure }

class ProfileState extends Equatable {
  final ProfileStatus status;
  final ProfileClass? profileDetails;
  final String? errorMessage;

  const ProfileState({required this.status,this.profileDetails, this.errorMessage});

  @override
  List<Object?> get props => [status, profileDetails, errorMessage];

  ProfileState copyWith({
    ProfileStatus? status,
    ProfileClass? profileDetails,
    String? errorMessage,
  }) {
    return ProfileState(
      status: status ?? this.status,
      profileDetails: profileDetails ?? this.profileDetails,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
