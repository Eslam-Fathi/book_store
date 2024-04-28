import 'package:book_store/Features/Home/Data/Repos/home_repo_impl.dart';
import 'package:book_store/Features/Search/Data/Repos/search_repo_impl.dart';
import 'package:book_store/core/Services/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getServiceLocator = GetIt.instance;

void setupServiceLocator() {
  // Api Singleton
  getServiceLocator.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  // home implementation singleton
  getServiceLocator.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getServiceLocator.get<ApiService>(),
    ),
  );
  // search implementation singleton
  getServiceLocator.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(
      getServiceLocator.get<ApiService>(),
    ),
  );
}
