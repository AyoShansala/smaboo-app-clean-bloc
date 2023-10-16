import 'package:shared_preferences/shared_preferences.dart';
import 'package:smaboo_business_app/core/errors/exceptions.dart';
import 'package:smaboo_business_app/utils/strings/shared_preferences_keys.dart';

import '../model/profile_model.dart';


abstract class ProfileLocalDataSource {
  Future<ProfileModel> getCachedProfile();
  Future<void> cacheProfile(ProfileModel profileModel);
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  final SharedPreferences sharedPreferences;

  const ProfileLocalDataSourceImpl({
    required this.sharedPreferences,
  });

  @override
  Future<ProfileModel> getCachedProfile() {
    final jsonString = sharedPreferences.getString(CachedModelKeys.userProfile);
    if (jsonString != null) {
      return Future.value(profileFromJson(jsonString));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheProfile(ProfileModel profileModel) async {
    await sharedPreferences.setString(CachedModelKeys.userProfile, profileToJson(profileModel));
  }
}
