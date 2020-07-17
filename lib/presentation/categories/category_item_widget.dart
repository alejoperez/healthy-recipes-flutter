import 'package:flutter/material.dart';
import 'package:recipes/domain/model/recipe_category.dart';

class CategoryItemWidget extends StatelessWidget {
  final RecipeCategory category;

  const CategoryItemWidget({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
      elevation: 5,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(
            this.category.imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 250,
          ),
          Container(
            color: Colors.black54,
            height: 50,
            width: double.infinity,
            child: Center(
              child: Text(
                category.name,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
