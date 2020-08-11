import 'package:flutter/material.dart';
import 'package:recipes/domain/model/recipe.dart';
import 'package:recipes/presentation/base/widgets/card_widget.dart';
import 'package:recipes/presentation/base/widgets/network_image_widget.dart';
import 'package:recipes/presentation/base/widgets/response_widget.dart';
import 'package:recipes/presentation/base/widgets/text_with_icon_widget.dart';
import 'package:recipes/presentation/recipes/list/recipe_item_widget.dart';

class RecipeDescriptionWidget extends StatelessWidget {
  final Recipe recipe;

  const RecipeDescriptionWidget({Key key, @required this.recipe})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
      smallScreen: _RecipeDescriptionSmallWidget(recipe: recipe),
      largeScreen: _RecipeDescriptionLargeWidget(recipe: recipe));
}

class _RecipeDescriptionSmallWidget extends StatelessWidget {
  final Recipe recipe;

  const _RecipeDescriptionSmallWidget({Key key, this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) => RecipeItemWidget(
        recipe: recipe,
        width: double.infinity,
        showDetail: false,
      );
}

class _RecipeDescriptionLargeWidget extends StatelessWidget {
  final Recipe recipe;

  const _RecipeDescriptionLargeWidget({Key key, this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) => CardWidget(
        child: Table(columnWidths: {
          1: FractionColumnWidth(0.6)
        }, children: [
          TableRow(children: [
            Container(
              width: double.infinity,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(recipe.name,
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            .apply(color: Theme.of(context).primaryColor)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWithIconWidget(
                          iconData: Icons.people,
                          text: recipe.servings,
                          style: Theme.of(context).textTheme.headline5),
                      SizedBox(
                        width: 30,
                      ),
                      TextWithIconWidget(
                          iconData: Icons.schedule,
                          text: recipe.duration,
                          style: Theme.of(context).textTheme.headline5),
                    ],
                  )
                ],
              ),
            ),
            NetworkImageWidget(
                imageUrl: recipe.imageUrl, width: double.infinity, height: 400)
          ])
        ]),
      );
}
