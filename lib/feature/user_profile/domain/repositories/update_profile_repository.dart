import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/update_profile.dart';
import '../usercases/update_profile_usecase.dart';

abstract class UpdateProfileRepository {
  Future<Either<Failure, UpdateProfileClass>> updateProfile(UpdateProfileDetail updateProfileDetail);
}