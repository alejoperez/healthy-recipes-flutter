import 'package:flutter/foundation.dart';

class RecipeCategory {
  final String name;
  final String imageUrl;

  const RecipeCategory({@required this.name, @required this.imageUrl})
      : assert(name != null),
        assert(imageUrl != null);

  factory RecipeCategory.fromJson(Map<dynamic, dynamic> json) {
    return RecipeCategory(
        name: json['name'] ?? '', imageUrl: json['image_url'] ?? '');
  }
}
