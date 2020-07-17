import 'package:recipes/data/repositories/categories/categories_data_source_contracts.dart';
import 'package:recipes/domain/model/recipe_category.dart';
import 'package:recipes/presentation/base/app/dependency_injection.dart';

class CategoriesRepository implements ICategoriesRepository {
  final _remoteDataSource = locator<ICategoriesRemoteDataSource>();

  @override
  Future<List<RecipeCategory>> getCategories() =>
      _remoteDataSource.getCategories();
}
