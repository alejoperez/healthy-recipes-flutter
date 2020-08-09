import 'package:flutter/material.dart';
import 'package:recipes/domain/model/book_category.dart';
import 'package:recipes/presentation/base/widgets/response_widget.dart';
import 'package:recipes/presentation/base/providers/recipe_book_provider.dart';
import 'package:recipes/presentation/categories/category_item_widget.dart';
import 'package:provider/provider.dart';
import 'package:recipes/presentation/base/app/strings.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<RecipeBookProvider>(context, listen: false)
            .getRecipeBook(),
        builder: (_, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default:
              return ResponsiveWidget(
                  smallScreen:
                      _CategoriesSmallScreen(categories: snapshot.data),
                  largeScreen:
                      _CategoriesLargeScreen(categories: snapshot.data));
          }
        });
  }
}

class _CategoriesLargeScreen extends StatelessWidget {
  final List<BookCategory> categories;
  const _CategoriesLargeScreen({Key key, @required this.categories})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Image.asset(
                'images/onboarding_image.jpg',
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
                  Strings.appTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      .apply(color: Colors.white),
                )),
              )
            ]),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Text(Strings.categoriesTitle,
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        .apply(color: Colors.black)),
              ),
            ),
            Center(
              child: Wrap(
                children: categories
                    .map((c) => CategoryItemWidget(category: c))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoriesSmallScreen extends StatelessWidget {
  final List<BookCategory> categories;
  const _CategoriesSmallScreen({Key key, @required this.categories})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Strings.appTitle)),
      body: ListView.builder(
        itemBuilder: (_, index) =>
            CategoryItemWidget(category: categories[index]),
        itemCount: categories.length,
      ),
    );
  }
}
