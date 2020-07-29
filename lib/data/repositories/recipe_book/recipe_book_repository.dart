import 'package:recipes/data/repositories/recipe_book/recipe_book_data_source_contracts.dart';
import 'package:recipes/domain/model/book_category.dart';
import 'package:recipes/presentation/base/app/dependency_injection.dart';

class RecipeBookRepository implements IRecipeBookRepository {
  final _remoteDataSource = locator<IRecipeBookRemoteDataSource>();

  @override
  Future<List<BookCategory>> getRecipeBook() =>
      _remoteDataSource.getRecipeBook();
}
