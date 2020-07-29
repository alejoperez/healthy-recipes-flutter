import 'package:get_it/get_it.dart';
import 'package:recipes/data/repositories/recipe_book/recipe_book_data_source_contracts.dart';
import 'package:recipes/data/repositories/recipe_book/recipe_book_remote_data_source.dart';
import 'package:recipes/data/repositories/recipe_book/recipe_book_repository.dart';
import 'package:recipes/data/webservices/recipe_book_api.dart';
import 'package:recipes/domain/use_cases/recipe_book/recipe_book_usecase.dart';

GetIt locator = GetIt.instance;

class DependencyInjection {
  static void init() {
    _initWebServices();
    _initRepositories();
    _initUseCases();
  }

  static void _initWebServices() {
    locator.registerLazySingleton(() => RecipeBookApi());
  }

  static void _initRepositories() {
    locator.registerLazySingleton<IRecipeBookRepository>(
        () => RecipeBookRepository());
    locator.registerLazySingleton<IRecipeBookRemoteDataSource>(
        () => RecipeBookRemoteDataSource());
  }

  static void _initUseCases() {
    locator
        .registerLazySingleton<IRecipeBookUseCase>(() => RecipeBookUseCase());
  }
}
