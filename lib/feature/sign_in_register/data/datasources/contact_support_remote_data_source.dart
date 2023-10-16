
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../utils/api_endpoints.dart';
import '../../domain/usecases/post_contact_support.dart';

abstract class ContactSupportDetailsRemoteDataSource {
  Future<bool> postContactSupportDetails(ContactParam param);
}

class ContactSupportDetailsRemoteDataSourceImpl
    implements ContactSupportDetailsRemoteDataSource {
  final DioClient dioClient;

  ContactSupportDetailsRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<bool> postContactSupportDetails(ContactParam param) async {
    try {
      Response response = await dioClient.public.post(
        ApiEndpoints.guestInquiry,
        data: param.toMap(),
      );
      debugPrint('$response');
      return true;
    } on DioException catch (err){
      throw ServerException.fromDioError(err);
    } catch (e){
      throw ServerException(errorMessage: '$e', unexpectedError: true);
    }
  }
}