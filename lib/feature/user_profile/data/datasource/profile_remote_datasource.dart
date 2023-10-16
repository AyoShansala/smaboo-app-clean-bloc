import 'package:dio/dio.dart';
import '../../../../utils/api_endpoints.dart';
import '../model/profile_model.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/dio_client.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileModel> getProfileDetails();
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final DioClient dioClient;

  const ProfileRemoteDataSourceImpl({
    required this.dioClient,
  });

  @override
  Future<ProfileModel> getProfileDetails() async {
    try {
      debugPrint("ApiEndpoints.profileDetails: ${ApiEndpoints.profileDetails}");
      Response response = await dioClient.public.get(ApiEndpoints.profileDetails);
      debugPrint('Response: ${response.data}');
      return profileFromJson(response.data);
    } on DioError catch (err) {
      throw ServerException.fromDioError(err);
    } catch (e) {
      throw ServerException(errorMessage: '$e', unexpectedError: true);
    }
  }
}
