import 'package:flutter/foundation.dart';

class Recipe {
  final String name;
  final String imageUrl;
  final String duration;
  final String servings;
  final List<String> ingredients;
  final List<String> nutrition;
  final List<String> steps;

  const Recipe({
    @required this.name,
    @required this.imageUrl,
    @required this.duration,
    @required this.servings,
    @required this.ingredients,
    @required this.nutrition,
    @required this.steps,
  })  : assert(name != null),
        assert(imageUrl != null),
        assert(duration != null),
        assert(servings != null),
        assert(ingredients != null),
        assert(nutrition != null),
        assert(steps != null);

  factory Recipe.fromJson(Map<dynamic, dynamic> json) => Recipe(
        name: json['name'] ?? '',
        imageUrl: json['image_url'] ?? '',
        duration: json['duration'] ?? '',
        servings: json['servings'] ?? '',
        ingredients: json['ingredients'] != null
            ? json['ingredients'].cast<String>().toList()
            : [],
        nutrition: json['nutrition'] != null
            ? json['nutrition'].cast<String>().toList()
            : [],
        steps:
            json['steps'] != null ? json['steps'].cast<String>().toList() : [],
      );
}
