import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smaboo_app_clean_bloc/core/network/dio_client.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/data/datasources/business_card_local_data_source.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/data/datasources/business_card_remote_data_source.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/data/repositories/business_card_repository_impl.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/domain/repositories/business_card_repository.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/domain/usecases/get_business_card_list.dart';
import 'package:smaboo_app_clean_bloc/feature/sign_up/presentation/bloc/business_card_list/business_card_list_bloc.dart';
import 'package:smaboo_app_clean_bloc/feature/user_profile/data/datasource/profile_datasource.dart';
import 'package:smaboo_app_clean_bloc/feature/user_profile/data/datasource/profile_local_datasource.dart';
import 'package:smaboo_app_clean_bloc/feature/user_profile/data/datasource/update_profile_datasource.dart';
import 'package:smaboo_app_clean_bloc/feature/user_profile/data/repositories/profile_repository_impl.dart';
import 'package:smaboo_app_clean_bloc/feature/user_profile/data/repositories/update_profile_repository_impl.dart';
import 'package:smaboo_app_clean_bloc/feature/user_profile/domain/repositories/profile_repository.dart';
import 'package:smaboo_app_clean_bloc/feature/user_profile/domain/repositories/update_profile_repository.dart';
import 'package:smaboo_app_clean_bloc/feature/user_profile/domain/usercases/profile_usecase.dart';

import '../core/network/network_info.dart';
import '../feature/user_profile/domain/usercases/update_profile_usecase.dart';
import '../feature/user_profile/presentation/bloc/profile_bloc.dart';
import '../feature/user_profile/presentation/bloc/update_profile/update_profile_bloc.dart';
import '../feature/user_profile/presentation/cubit/user_profile_cubit.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  ///Feature : SignUp
  //blocs
  sl.registerFactory<BusinessCardListBloc>(
      () => BusinessCardListBloc(getBusinessCardList: sl()));

  //Use Case
  sl.registerLazySingleton<GetBusinessCardList>(
      () => GetBusinessCardList(businessCardRepository: sl()));

  //Repositories
  sl.registerLazySingleton<BusinessCardRepository>(() =>
      BusinessCardRepositoryImpl(
          localDataSource: sl(), remoteDataSource: sl(), networkInfo: sl()));
  //Data Sources
  sl.registerLazySingleton<BusinessCardLocalDataSource>(
      () => BusinessCardLocalDataSourceImpl(sharedPreferences: sl()));
  sl.registerLazySingleton<BusinessCardRemoteDataSource>(
      () => BusinessCardRemoteDataSourceImpl(dioClient: sl()));

  /// Network
  sl.registerFactory<Dio>(() => Dio());
  sl.registerFactory<DioClient>(
      () => DioClient(public: sl<Dio>(), dioAuth: sl<Dio>()));
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));
  sl.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());

   /// Feature: Profile
  // Blocs
  sl.registerFactory<ProfileBloc>(() => ProfileBloc(getUserProfile: sl()));
  // Use Cases
  sl.registerLazySingleton<GetUserProfile>(() => GetUserProfile(userProfileRepository: sl()));
  // Repositories
  sl.registerLazySingleton<UserProfileRepository>(() => ProfileRepositoryImpl(remoteDataSource: sl(), localDataSource: sl(), networkInfo: sl()));
  // Data Sources
  sl.registerLazySingleton<ProfileRemoteDataSource>(() => ProfileRemoteDataSourceImpl(dioClient: sl()));
  sl.registerLazySingleton<ProfileLocalDataSource>(() => ProfileLocalDataSourceImpl(sharedPreferences: sl()));

  /// Feature: update profile
  // Blocs
  sl.registerFactory<UserProfileCubit>(() => UserProfileCubit());
  sl.registerFactory<UpdateProfileBloc>(() => UpdateProfileBloc(getUpdateProfile: sl()));
  // Use Cases
  sl.registerLazySingleton<GetUpdateProfile>(() => GetUpdateProfile(updateProfileRepository: sl()));
  // Repositories
  sl.registerLazySingleton<UpdateProfileRepository>(() => UpdateProfileRepositoryImpl(updateProfileRemoteDataSource: sl(), ));
  // Data Sources
  sl.registerLazySingleton<UpdateProfileRemoteDataSource>(() => UpdateProfileRemoteDataSourceImpl(dioClient: sl()));


  /// Plugins
  // Shared Preferences
  final sharedPref = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPref);
}
