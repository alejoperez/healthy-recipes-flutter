import 'package:flutter/foundation.dart';
import 'package:recipes/domain/model/book_category.dart';
import 'package:recipes/presentation/base/app/dependency_injection.dart';
import 'package:recipes/domain/use_cases/recipe_book/recipe_book_usecase.dart';

class RecipeBookProvider extends ChangeNotifier {
  final _recipeBookUseCase = locator<IRecipeBookUseCase>();

  Future<List<BookCategory>> getRecipeBook() => _recipeBookUseCase.execute();
}
