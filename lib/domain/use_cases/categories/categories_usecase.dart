import 'package:recipes/data/repositories/categories/categories_data_source_contracts.dart';
import 'package:recipes/domain/model/recipe_category.dart';
import 'package:recipes/presentation/base/app/dependency_injection.dart';

abstract class ICategoriesUseCase {
  Future<List<RecipeCategory>> execute();
}

class CategoriesUseCase implements ICategoriesUseCase {
  final _categoriesRepository = locator<ICategoriesRepository>();

  @override
  Future<List<RecipeCategory>> execute() => _categoriesRepository.getCategories();
}
