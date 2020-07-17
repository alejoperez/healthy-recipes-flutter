import 'package:recipes/domain/use_cases/categories/categories_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:recipes/domain/model/recipe_category.dart';
import 'package:recipes/presentation/base/app/dependency_injection.dart';

class CategoriesProvider extends ChangeNotifier {
  
  final _categoriesUseCase = locator<ICategoriesUseCase>();

  Future<List<RecipeCategory>> getCategories() => _categoriesUseCase.execute();
}
