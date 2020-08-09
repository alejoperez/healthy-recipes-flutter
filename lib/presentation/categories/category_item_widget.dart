import 'package:flutter/material.dart';
import 'package:recipes/domain/model/book_category.dart';
import 'package:recipes/presentation/recipes/list/recipe_list_screen.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryItemWidget extends StatelessWidget {
  final BookCategory category;

  const CategoryItemWidget({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showRecipesByCategory(context);
      },
      child: Container(
        width: 400,
        child: Card(
          margin:
              const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
          elevation: 8,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [_buildImageWidget(), _buildFooterWidget(context)],
          ),
        ),
      ),
    );
  }

  void _showRecipesByCategory(BuildContext context) => Navigator.of(context)
      .pushNamed(RecipeListScreen.ROUTE_NAME, arguments: category);

  Widget _buildImageWidget() => FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: this.category.imageUrl,
        fit: BoxFit.cover,
        height: 250,
        width: double.infinity,
      );

  Widget _buildFooterWidget(BuildContext context) => Container(
        color: Colors.black54,
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            category.name,
            style: Theme.of(context)
                .textTheme
                .headline5
                .apply(color: Colors.white),
          ),
        ),
      );
}
