import 'package:recipes/domain/model/recipe_category.dart';

abstract class ICategoriesRepository {
  Future<List<RecipeCategory>> getCategories();
}

abstract class ICategoriesRemoteDataSource {
  Future<List<RecipeCategory>> getCategories();
}
