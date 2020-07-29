import 'package:recipes/data/repositories/recipe_book/recipe_book_data_source_contracts.dart';
import 'package:recipes/data/webservices/recipe_book_api.dart';
import 'package:recipes/domain/model/book_category.dart';
import 'package:recipes/presentation/base/app/dependency_injection.dart';

class RecipeBookRemoteDataSource implements IRecipeBookRemoteDataSource {
  final _recipeBookApi = locator<RecipeBookApi>();

  @override
  Future<List<BookCategory>> getRecipeBook() => _recipeBookApi.getRecipeBook();
}
