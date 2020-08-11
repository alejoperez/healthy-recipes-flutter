import 'package:flutter/material.dart';
import 'package:recipes/domain/model/recipe.dart';
import 'package:recipes/presentation/base/widgets/card_widget.dart';
import 'package:recipes/presentation/base/widgets/response_widget.dart';
import 'package:recipes/presentation/recipes/detail/recipe_description_widget.dart';
import 'package:recipes/presentation/recipes/detail/recipe_ingredients_widget.dart';
import 'package:recipes/presentation/recipes/detail/recipe_nutrition_widget.dart';
import 'package:recipes/presentation/recipes/detail/recipe_steps_widget.dart';

class RecipeDetailScreen extends StatelessWidget {
  static const ROUTE_NAME = "/recipe-detail";

  Recipe _getRecipe(BuildContext ctx) => ModalRoute.of(ctx).settings.arguments;

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
      smallScreen: _RecipeDetailSmallScreen(recipe: _getRecipe(context)),
      largeScreen: _RecipeDetailLargeScreen(recipe: _getRecipe(context)));
}

class _RecipeDetailSmallScreen extends StatelessWidget {
  final Recipe recipe;

  const _RecipeDetailSmallScreen({Key key, @required this.recipe})
      : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(recipe.name)),
        body: SingleChildScrollView(
            child: Column(children: [
          RecipeDescriptionWidget(recipe: recipe),
          CardWidget(child: RecipeNutritionWidget(recipe: recipe)),
          CardWidget(
            child: RecipeIngredientsWidget(recipe: recipe),
          ),
          CardWidget(
            child: RecipeStepsWidget(recipe: recipe),
          ),
        ])),
      );
}

class _RecipeDetailLargeScreen extends StatelessWidget {
  final Recipe recipe;

  const _RecipeDetailLargeScreen({Key key, this.recipe}) : super(key: key);
  @override
  Widget build(BuildContext context) => Scaffold(
          body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            RecipeDescriptionWidget(recipe: recipe),
            CardWidget(
              child: Table(
                columnWidths: {1: FractionColumnWidth(0.6)},
                children: [
                  TableRow(children: [
                    RecipeIngredientsWidget(recipe: recipe),
                    RecipeNutritionWidget(recipe: recipe)
                  ])
                ],
              ),
            ),
            CardWidget(
              child: RecipeStepsWidget(recipe: recipe),
            )
          ],
        ),
      ));
}
