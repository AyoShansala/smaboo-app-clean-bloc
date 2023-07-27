import 'package:dartz/dartz.dart';
import 'package:smaboo_app_clean_bloc/core/errors/failures.dart';
import 'package:smaboo_app_clean_bloc/core/network/network_info.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/data/datasources/business_card_local_data_source.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/data/datasources/business_card_remote_data_source.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/domain/entities/business_card.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/domain/repositories/business_card_repository.dart';

import '../../../../core/errors/exceptions.dart';


class BusinessCardRepositoryImpl implements BusinessCardRepository {
  final BusinessCardLocalDataSource localDataSource;
  final BusinessCardRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const BusinessCardRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<BusinessCard>>> getBusinessCardList() async {
    // TODO: implement getBusinessCardList
    if(await networkInfo.isConnectedToInternet){
      try{
        final businessCardList = await remoteDataSource.getBusinessCardList();
        localDataSource.cacheBusinessCardList(businessCardList);
        return Right(businessCardList.toEntity());
      }on ServerException catch (serverException){
        return Left(ServerFailure()); 
      }
    }else{
      try{
        final businessCardList = await localDataSource.getCachedBusinessCardList();
        return Right(businessCardList.toEntity());
      }on CacheException catch (cacheException){
        return Left(CacheFailure());
      }
    }
  }
  
}
