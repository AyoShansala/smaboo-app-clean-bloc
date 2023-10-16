import 'package:dartz/dartz.dart';



import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/profile.dart';
import '../../domain/repositories/profile_repository.dart';
import '../datasource/profile_datasource.dart';
import '../datasource/profile_local_datasource.dart';

class ProfileRepositoryImpl implements UserProfileRepository {
  final ProfileRemoteDataSource remoteDataSource;
  final ProfileLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  const ProfileRepositoryImpl(
      {required this.remoteDataSource, required this.localDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, ProfileClass>> userProfile() async {
    if (await networkInfo.isConnectedToInternet) {
      try {
        final remoteProfileDetails = await remoteDataSource.getProfileDetails();
        localDataSource.cacheProfile(remoteProfileDetails);
        return Right(remoteProfileDetails.toEntity());
      } on ServerException catch (serverException) {
        if(serverException.unexpectedError) {
          // FireBaseServices.sendCrashReport(serverException, StackTrace.current);
        }
        return Left(ServerFailure());
      }
    } else {
      try {
        final localProfileDetail = await localDataSource.getCachedProfile();
        return Right(localProfileDetail.toEntity());
      } on CacheException {
        return Left(CacheFailure());
      }
    }

  }
}
