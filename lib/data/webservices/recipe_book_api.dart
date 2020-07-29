import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipes/data/webservices/webservice_configs.dart';
import 'package:recipes/domain/model/book_category.dart';

class RecipeBookApi {
  static const _RECIPE_BOOK = "recipe_book.json";

  Future<List<BookCategory>> getRecipeBook() async {
    try {
      final rawResponse =
          await http.get("${WebServiceConfig.BASE_URL}$_RECIPE_BOOK");
      final jsonList = json.decode(rawResponse.body) as List<dynamic>;
      return jsonList.map((json) => BookCategory.fromJson(json)).toList();
    } catch (error) {
      return [];
    }
  }
}
