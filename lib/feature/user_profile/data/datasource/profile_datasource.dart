import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../utils/api_endpoints.dart';
import '../model/profile_model.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileModel> getProfileDetails();
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final DioClient dioClient;

  const ProfileRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<ProfileModel> getProfileDetails() async {
    try {
      dioClient.public.options.headers['Authorization'] =
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvc3RhZ2luZy5zbWFib28uY29tXC9hcGlcL3YxXC91c2VyXC9sb2dpbiIsImlhdCI6MTY5MTQwOTI5OCwiZXhwIjoxNzIyOTQ1Mjk4LCJuYmYiOjE2OTE0MDkyOTgsImp0aSI6IlRidjdMMWJib3l1ZVduNkwiLCJzdWIiOjYsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.RiKPsP4I0dDBAyvfLPSvt9ia2POEU7378A3Hk23PySI';
      debugPrint("ApiEndpoints.profileDetails: ${ApiEndpoints.profileDetails}");
      Response response =
          await dioClient.public.get(ApiEndpoints.profileDetails);
      debugPrint('Response: ${response.data}');
      return profileFromJson(response.data);
    } on DioError catch (err) {
      throw ServerException.fromDioError(err);
    } catch (e) {
      throw ServerException(errorMessage: '$e', unexpectedError: true);
    }
  }
}
