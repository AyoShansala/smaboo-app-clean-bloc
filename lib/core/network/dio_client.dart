import 'package:dio/dio.dart';
import 'package:smaboo_app_clean_bloc/utils/api_endpoints.dart';

import 'interceptors/authorization_iterceptor.dart';

class DioClient {
  DioClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: ApiEndpoints.baseUrl,
            connectTimeout: const Duration(milliseconds: 5000), //in milisecond
            receiveTimeout: const Duration(milliseconds: 30000),
            responseType: ResponseType.plain,
          ),
        ),
        dioAuth = Dio(
          BaseOptions(
            baseUrl: ApiEndpoints.baseUrl,
            connectTimeout: const Duration(milliseconds: 5000), //in milisecond
            receiveTimeout: const Duration(milliseconds: 30000),
            responseType: ResponseType.plain,
          ),
        )..interceptors.add(AuthorizationInterceptor());

  final Dio dio;
  final Dio dioAuth;
}
