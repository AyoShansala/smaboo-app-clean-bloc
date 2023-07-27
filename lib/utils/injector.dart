import 'package:dio/dio.dart';
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

import '../core/network/network_info.dart';

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

  /// Plugins
  // Shared Preferences
  final sharedPref = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPref);
}
