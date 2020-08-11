import 'package:flutter/material.dart';
import 'package:recipes/domain/model/book_category.dart';
import 'package:recipes/presentation/base/widgets/card_widget.dart';
import 'package:recipes/presentation/base/widgets/network_image_widget.dart';
import 'package:recipes/presentation/base/widgets/transparent_text_widget.dart';
import 'package:recipes/presentation/recipes/list/recipe_list_screen.dart';

class CategoryItemWidget extends StatelessWidget {
  final BookCategory category;

  const CategoryItemWidget({Key key, @required this.category})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showRecipesByCategory(context);
      },
      child: Container(
        width: 400,
        child: CardWidget(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              NetworkImageWidget(
                  imageUrl: this.category.imageUrl,
                  width: double.infinity,
                  height: 250),
              TransparentTextWidget(text: category.name)
            ],
          ),
        ),
      ),
    );
  }

  void _showRecipesByCategory(BuildContext context) => Navigator.of(context)
      .pushNamed(RecipeListScreen.ROUTE_NAME, arguments: category);
}
