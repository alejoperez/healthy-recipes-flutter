import 'package:recipes/domain/model/book_category.dart';

abstract class IRecipeBookRepository {
  Future<List<BookCategory>> getRecipeBook();
}

abstract class IRecipeBookRemoteDataSource {
  Future<List<BookCategory>> getRecipeBook();
}
