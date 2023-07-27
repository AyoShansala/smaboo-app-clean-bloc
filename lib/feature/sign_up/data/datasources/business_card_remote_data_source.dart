import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:smaboo_app_clean_bloc/core/network/dio_client.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/data/models/business_card_model.dart';
import 'package:smaboo_app_clean_bloc/utils/api_endpoints.dart';

import '../../../../core/errors/exceptions.dart';

abstract class BusinessCardRemoteDataSource {
  Future<BusinessListModel> getBusinessCardList();
  // Future<BusinessListModel> getBusinessCardListAnother();
}

class BusinessCardRemoteDataSourceImpl implements BusinessCardRemoteDataSource {
  final DioClient dioClient;

  const BusinessCardRemoteDataSourceImpl({
    required this.dioClient,
  });

  // final dio = Dio(
  //         BaseOptions(
  //           baseUrl: ApiEndpoints.baseUrl,
  //           connectTimeout: const Duration(milliseconds: 5000), //in milisecond
  //           receiveTimeout: const Duration(milliseconds: 30000),
  //           responseType: ResponseType.plain,
  //         ),);

  @override
  Future<BusinessListModel> getBusinessCardList() async {
    try {
      // dio.options.headers['Authorization'] = 'Bearer eyJ0eXAiO';
      Response response =
          await dioClient.public.get(ApiEndpoints.businessCardList);
      // debugPrint("#5274 response $response");

      return businessListModelFromJson(response.data);
    } on DioError catch (err) {
      // debugPrint("#7475 err $err");
      throw ServerException.fromDioError(err);
    } catch (e) {
      throw ServerException(errorMessage: '$e', unexpectedError: true);
    }
    // return false;
  }
}
