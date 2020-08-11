import 'package:flutter/material.dart';
import 'package:recipes/domain/model/recipe.dart';
import 'package:recipes/presentation/base/widgets/card_widget.dart';
import 'package:recipes/presentation/base/widgets/network_image_widget.dart';
import 'package:recipes/presentation/base/widgets/text_with_icon_widget.dart';
import 'package:recipes/presentation/base/widgets/transparent_text_widget.dart';
import 'package:recipes/presentation/recipes/detail/recipe_detail_screen.dart';

class RecipeItemWidget extends StatelessWidget {
  final Recipe recipe;
  final double width;
  final bool showDetail;

  const RecipeItemWidget(
      {Key key,
      @required this.recipe,
      @required this.width,
      this.showDetail = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (showDetail) _showRecipeDetail(context);
      },
      child: Container(
        width: this.width,
        child: CardWidget(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  NetworkImageWidget(
                      imageUrl: recipe.imageUrl,
                      width: double.infinity,
                      height: 250),
                  TransparentTextWidget(text: recipe.name),
                ],
              ),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextWithIconWidget(
                          iconData: Icons.schedule,
                          text: recipe.duration,
                          style: Theme.of(context).textTheme.subtitle1),
                      TextWithIconWidget(
                          iconData: Icons.people,
                          text: recipe.servings,
                          style: Theme.of(context).textTheme.subtitle1),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showRecipeDetail(BuildContext context) => Navigator.of(context)
      .pushNamed(RecipeDetailScreen.ROUTE_NAME, arguments: recipe);
}
