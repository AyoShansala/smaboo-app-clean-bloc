import 'package:dio/dio.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/data/models/business_card_model.dart';
import 'package:smaboo_app_clean_bloc/utils/api_endpoints.dart';

import '../../../../core/errors/exceptions.dart';


abstract class BusinessCardRemoteDataSource{
  Future<BusinessListModel> getBusinessCardList();
  // Future<BusinessListModel> getBusinessCardListAnother();
}

class BusinessCardRemoteDataSourceImpl implements BusinessCardRemoteDataSource{
  final Dio dio;

  const BusinessCardRemoteDataSourceImpl({
    required this.dio,
  });

  @override
  Future<BusinessListModel> getBusinessCardList() async {
    try{
      Response response = await dio.get(ApiEndpoints.businessCardList);
      return businessListModelFromJson(response.data);
    }on DioError catch (err){
      throw ServerException.fromDioError(err);

    }catch (e){
      throw ServerException(errorMessage: '$e', unexpectedError: true);
    }
  }
}