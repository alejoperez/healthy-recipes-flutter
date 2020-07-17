import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipes/data/webservices/webservice_configs.dart';
import 'package:recipes/domain/model/recipe_category.dart';

class CategoriesApi {
  static const _CATEGORIES = "categories.json";

  Future<List<RecipeCategory>> getCategories() async {
    try {
      final rawResponse =
          await http.get("${WebServiceConfig.BASE_URL}$_CATEGORIES");
      final jsonList = json.decode(rawResponse.body) as List<dynamic>;
      return jsonList.map((json) => RecipeCategory.fromJson(json)).toList();
    } catch (error) {
      return [];
    }
  }
}
