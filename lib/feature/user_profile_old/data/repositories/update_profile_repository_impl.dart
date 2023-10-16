
import 'package:dartz/dartz.dart';

import 'package:smaboo_business_app/core/errors/failures.dart';

import 'package:smaboo_business_app/features/user_profile/domain/entities/update_profile.dart';

import 'package:smaboo_business_app/features/user_profile/domain/usercases/update_profile_usecase.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/other/firebase_services.dart';
import '../../domain/repositories/update_profile_repository.dart';
import '../datasource/update_profile_datasource.dart';

class UpdateProfileRepositoryImpl implements UpdateProfileRepository {
  final UpdateProfileRemoteDataSource updateProfileRemoteDataSource;

  const UpdateProfileRepositoryImpl(
      {required this.updateProfileRemoteDataSource});

  @override
  Future<Either<Failure, UpdateProfileClass>> updateProfile(UpdateProfileDetail updateProfileDetail) async {
    try {
      final updateProfile = await updateProfileRemoteDataSource.getUpdateProfile(updateProfileDetail);
      return Right(updateProfile.toEntity());
    } on ServerException catch (serverException) {
      if(serverException.unexpectedError) {
        FireBaseServices.sendCrashReport(serverException, StackTrace.current);
      }
      return Left(ServerFailure(message: serverException.errorMessage));
    }
  }

}
