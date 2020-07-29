import 'package:flutter/foundation.dart';
import 'package:recipes/domain/model/recipe.dart';

class BookCategory {
  final String name;
  final String imageUrl;
  final List<Recipe> recipes;

  const BookCategory(
      {@required this.name, @required this.imageUrl, @required this.recipes})
      : assert(name != null),
        assert(imageUrl != null),
        assert(recipes != null);

  factory BookCategory.fromJson(Map<dynamic, dynamic> json) => BookCategory(
      name: json['name'] ?? '',
      imageUrl: json['image_url'] ?? '',
      recipes: json['recipes'] != null
          ? json['recipes']
              .map<Recipe>((json) => Recipe.fromJson(json))
              .toList()
          : []);
}
