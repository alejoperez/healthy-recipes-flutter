import 'package:flutter/material.dart';
import 'package:recipes/domain/model/recipe.dart';
import 'package:recipes/presentation/recipes/detail/recipe_detail_screen.dart';
import 'package:transparent_image/transparent_image.dart';

class RecipeItemWidget extends StatelessWidget {
  final Recipe recipe;

  const RecipeItemWidget({Key key, this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _showRecipeDetail(context);
      },
      child: Container(
        width: 400,
        child: Card(
          margin:
              const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
          elevation: 8,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [_buildImageWidget(), _buildFooter(context)],
          ),
        ),
      ),
    );
  }

  void _showRecipeDetail(BuildContext context) => Navigator.of(context)
      .pushNamed(RecipeDetailScreen.ROUTE_NAME, arguments: recipe);

  Widget _buildImageWidget() => FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: recipe.imageUrl,
        fit: BoxFit.cover,
        height: 250,
        width: double.infinity,
      );

  Widget _buildFooter(BuildContext context) => Container(
        height: 100,
        width: double.infinity,
        child: Column(
          children: [
            _buildFooterTitleWidget(context),
            _buildFooterDescriptionWidget(context)
          ],
        ),
      );

  Widget _buildFooterTitleWidget(BuildContext context) => Container(
        color: Colors.black54,
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            recipe.name,
            maxLines: 2,
            style: Theme.of(context)
                .textTheme
                .headline5
                .apply(color: Colors.white),
          ),
        ),
      );

  Widget _buildFooterDescriptionWidget(BuildContext context) => Container(
        color: Colors.white,
        height: 50,
        width: double.infinity,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildDescriptionItem(context, recipe.duration, Icons.schedule),
              _buildDescriptionItem(context, recipe.servings, Icons.people)
            ],
          ),
        ),
      );

  Widget _buildDescriptionItem(
          BuildContext context, String title, IconData iconData) =>
      Row(
        children: [
          Icon(iconData),
          SizedBox(width: 6),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline6
                .apply(color: Colors.black),
          )
        ],
      );
}
