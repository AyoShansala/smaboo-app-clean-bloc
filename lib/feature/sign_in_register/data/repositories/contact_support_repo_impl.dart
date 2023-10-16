import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:smaboo_app_clean_bloc/core/errors/failures.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_in_register/domain/repository/contact_support_repository.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_in_register/domain/usecases/post_contact_support.dart';

import '../../../../core/errors/exceptions.dart';
import '../datasources/contact_support_remote_data_source.dart';

class ContactSupportRepositoryImpl implements PostContactSupportDetails {
  final ContactSupportDetailsRemoteDataSource
      contactSupportDetailsRemoteDataSource;
  // final NetworkInfo networkInfo;

  ContactSupportRepositoryImpl({
    required this.contactSupportDetailsRemoteDataSource,
    // required this.networkInfo,
  });

  @override
  Future<Either<Failure, bool>> postContactSupportDetails(ContactParam contactParam) async {
    // if(await networkInfo.isConnectedToInternet){
     try {
       final contactSupportDetails = await contactSupportDetailsRemoteDataSource
           .postContactSupportDetails(contactParam);
       return Right(contactSupportDetails);
     } on ServerException catch (serverException){
       return Left(ServerFailure());
     }
    // }
  }

  @override
  Future<Either<Failure, bool>> call(ContactParam params) {
    // TODO: implement call
    throw UnimplementedError();
  }

  @override
  // TODO: implement contactSupport
  ContactSupport get contactSupport => throw UnimplementedError();


}