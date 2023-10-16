import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/profile.dart';

abstract class UserProfileRepository {
  Future<Either<Failure, ProfileClass>> userProfile();
}