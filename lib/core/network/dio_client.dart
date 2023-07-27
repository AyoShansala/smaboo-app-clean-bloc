import 'package:dio/dio.dart';
import 'package:smaboo_app_clean_bloc/utils/api_endpoints.dart';

class DioClient {
  Dio public;
  Dio dioAuth;
  DioClient({required this.public, required this.dioAuth}) {
    public.options = BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        connectTimeout: const Duration(milliseconds: 5000), //in milisecond
        receiveTimeout: const Duration(milliseconds: 30000),
        responseType: ResponseType.plain,
        headers: {"X-localization": "en"});
    dioAuth.options = BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        connectTimeout: const Duration(milliseconds: 5000), //in milisecond
        receiveTimeout: const Duration(milliseconds: 30000),
        responseType: ResponseType.plain,
        headers: {"X-localization": "en"});
  }

  // DioClient()
  //     : dio = Dio(
  //         BaseOptions(
  //           baseUrl: ApiEndpoints.baseUrl,
  //           connectTimeout: const Duration(milliseconds: 5000), //in milisecond
  //           receiveTimeout: const Duration(milliseconds: 30000),
  //           responseType: ResponseType.plain,
  //         ),
  //       ),
  //       dioAuth = Dio(
  //         BaseOptions(
  //           baseUrl: ApiEndpoints.baseUrl,
  //           connectTimeout: const Duration(milliseconds: 5000), //in milisecond
  //           receiveTimeout: const Duration(milliseconds: 30000),
  //           responseType: ResponseType.plain,
  //         ),
  //       )..interceptors.add(AuthorizationInterceptor());

  // final Dio dio;
  // final Dio dioAuth;
}
