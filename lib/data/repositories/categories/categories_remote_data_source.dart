import 'package:recipes/data/repositories/categories/categories_data_source_contracts.dart';
import 'package:recipes/data/webservices/categories_api.dart';
import 'package:recipes/domain/model/recipe_category.dart';
import 'package:recipes/presentation/base/app/dependency_injection.dart';

class CategoriesRemoteDataSource implements ICategoriesRemoteDataSource {
  final _categoriesApi = locator<CategoriesApi>();

  @override
  Future<List<RecipeCategory>> getCategories() =>
      _categoriesApi.getCategories();
}
