
import 'package:dio/dio.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../utils/api_endpoints.dart';
import '../../domain/usercases/update_profile_usecase.dart';
import '../model/update_profile_model.dart';

abstract class UpdateProfileRemoteDataSource {
  Future<UpdateProfileModel> getUpdateProfile(UpdateProfileDetail updateProfileDetail);
}

class UpdateProfileRemoteDataSourceImpl implements UpdateProfileRemoteDataSource {
  final DioClient dioClient;

  const UpdateProfileRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<UpdateProfileModel> getUpdateProfile(UpdateProfileDetail updateProfileDetail) async {
    try {
      Response response = await dioClient.auth.post(ApiEndpoints.updateProfile, data: updateProfileDetail.toMap());
      return updateProfileModelFromJson(response.data);
    } on DioError catch (err) {
      throw ServerException.fromDioError(err);
    } catch (e) {
      throw ServerException(errorMessage: '$e', unexpectedError: true);
    }
  }
}