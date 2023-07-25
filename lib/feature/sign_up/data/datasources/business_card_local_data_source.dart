import 'package:shared_preferences/shared_preferences.dart';
import 'package:smaboo_app_clean_bloc/core/errors/exceptions.dart';
import 'package:smaboo_app_clean_bloc/utils/strings/shared_preferences_keys.dart';

import '../models/business_card_model.dart';

abstract class BusinessCardLocalDataSource {
  Future<BusinessListModel> getCachedBusinessCardList();
  Future<void> cacheBusinessCardList(BusinessListModel cardListModel);
}

class BusinessCardLocalDataSourceImpl implements BusinessCardLocalDataSource {
  final SharedPreferences sharedPreferences;

  const BusinessCardLocalDataSourceImpl({required this.sharedPreferences,});

  @override
  Future<void> cacheBusinessCardList(BusinessListModel cardListModel) async {
    sharedPreferences.setString(CachedModelKeys.businessListModel, cardListModel.toString());
  }

  @override
  Future<BusinessListModel> getCachedBusinessCardList() async{
    final jsonString = sharedPreferences.getString(CachedModelKeys.businessListModel);
    if(jsonString != null){
      return Future.value(businessListModelFromJson(jsonString));
    }else{
      throw CacheException();
    }
  }

  
}
