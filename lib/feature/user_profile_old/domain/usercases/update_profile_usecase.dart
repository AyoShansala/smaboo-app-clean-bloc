import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/update_profile.dart';
import '../repositories/update_profile_repository.dart';

class GetUpdateProfile implements UseCase<UpdateProfileClass, UpdateProfileDetail> {
  final UpdateProfileRepository updateProfileRepository;

  GetUpdateProfile({required this.updateProfileRepository});

  @override
  Future<Either<Failure, UpdateProfileClass>> call(UpdateProfileDetail updateProfileDetail) async {
    return await updateProfileRepository.updateProfile(updateProfileDetail);
  }
}

class UpdateProfileDetail extends Equatable {
  final String email;
  final String phoneNo;
  final String name;
  final String address;
  final String image;

  const UpdateProfileDetail({
    required this.email,
    required this.phoneNo,
    required this.name,
    required this.address,
    required this.image
  });

  @override
  List<Object?> get props => [email, phoneNo, name, address, image];

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'contact_number': phoneNo,
      'address': address,
      'image': image,
    };
  }
}

