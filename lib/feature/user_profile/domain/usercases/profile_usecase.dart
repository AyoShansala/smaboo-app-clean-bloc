import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

import '../../../../core/usecase/usecase.dart';
import '../entities/profile.dart';
import '../repositories/profile_repository.dart';

class GetUserProfile implements UseCase<ProfileClass, String> {
  final UserProfileRepository userProfileRepository;

  GetUserProfile({required this.userProfileRepository});

  @override
  Future<Either<Failure, ProfileClass>> call(String id) async {
    return await userProfileRepository.userProfile();
  }
}