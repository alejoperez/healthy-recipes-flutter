import 'package:get_it/get_it.dart';
import 'package:recipes/data/repositories/categories/categories_data_source_contracts.dart';
import 'package:recipes/data/repositories/categories/categories_remote_data_source.dart';
import 'package:recipes/data/repositories/categories/categories_repository.dart';
import 'package:recipes/data/webservices/categories_api.dart';
import 'package:recipes/domain/use_cases/categories/categories_usecase.dart';

GetIt locator = GetIt.instance;

class DependencyInjection {
  static void init() {
    _initWebServices();
    _initRepositories();
    _initUseCases();
  }

  static void _initWebServices() {
    locator.registerLazySingleton(() => CategoriesApi());
  }

  static void _initRepositories() {
    locator.registerLazySingleton<ICategoriesRepository>(
        () => CategoriesRepository());
    locator.registerLazySingleton<ICategoriesRemoteDataSource>(
        () => CategoriesRemoteDataSource());
  }

  static void _initUseCases() {
    locator
        .registerLazySingleton<ICategoriesUseCase>(() => CategoriesUseCase());
  }
}
