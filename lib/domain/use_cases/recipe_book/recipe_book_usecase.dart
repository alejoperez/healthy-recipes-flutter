import 'package:recipes/data/repositories/recipe_book/recipe_book_data_source_contracts.dart';
import 'package:recipes/domain/model/book_category.dart';
import 'package:recipes/presentation/base/app/dependency_injection.dart';

abstract class IRecipeBookUseCase {
  Future<List<BookCategory>> execute();
}

class RecipeBookUseCase implements IRecipeBookUseCase {
  final _recipeBookRepository = locator<IRecipeBookRepository>();

  @override
  Future<List<BookCategory>> execute() => _recipeBookRepository.getRecipeBook();
}
