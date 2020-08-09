import 'package:flutter/material.dart';
import 'package:recipes/domain/model/book_category.dart';
import 'package:recipes/presentation/base/widgets/response_widget.dart';
import 'package:recipes/presentation/recipes/list/recipe_item_widget.dart';

class RecipeListScreen extends StatelessWidget {
  static const ROUTE_NAME = "/recipes-by-category";

  BookCategory _getCategory(BuildContext ctx) =>
      ModalRoute.of(ctx).settings.arguments;

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
      smallScreen: _RecipeListSmallScreen(category: _getCategory(context)),
      largeScreen: _RecipeListLargeScreen(category: _getCategory(context)));
}

class _RecipeListLargeScreen extends StatelessWidget {
  final BookCategory category;
  const _RecipeListLargeScreen({Key key, @required this.category})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.network(
                category.imageUrl,
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.black54,
                height: 400,
                width: double.infinity,
                child: Center(
                    child: Text(
                  category.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      .apply(color: Colors.white),
                )),
              )
            ]),
            Center(
              child: Wrap(
                children: category.recipes
                    .map((r) => RecipeItemWidget(recipe: r))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RecipeListSmallScreen extends StatelessWidget {
  final BookCategory category;
  const _RecipeListSmallScreen({Key key, @required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.name)),
      body: ListView.builder(
        itemBuilder: (_, index) =>
            RecipeItemWidget(recipe: category.recipes[index]),
        itemCount: category.recipes.length,
      ),
    );
  }
}
