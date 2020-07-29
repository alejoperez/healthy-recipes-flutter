import 'package:flutter/foundation.dart';

class Recipe {
  final String name;
  final String imageUrl;
  final String duration;
  final String difficulty;
  final List<String> ingredients;
  final List<String> steps;

  const Recipe({
    @required this.name,
    @required this.imageUrl,
    @required this.duration,
    @required this.difficulty,
    @required this.ingredients,
    @required this.steps,
  })  : assert(name != null),
        assert(imageUrl != null),
        assert(duration != null),
        assert(difficulty != null),
        assert(ingredients != null),
        assert(steps != null);

  factory Recipe.fromJson(Map<dynamic, dynamic> json) => Recipe(
        name: json['name'] ?? '',
        imageUrl: json['image_url'] ?? '',
        duration: json['duration'] ?? '',
        difficulty: json['difficulty'] ?? '',
        ingredients: json['ingredients'] != null
            ? json['ingredients'].cast<String>().toList()
            : [],
        steps:
            json['steps'] != null ? json['steps'].cast<String>().toList() : [],
      );
}
