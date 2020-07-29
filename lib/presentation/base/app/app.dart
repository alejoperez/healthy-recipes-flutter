import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes/presentation/base/app/strings.dart';
import 'package:recipes/presentation/base/providers/recipe_book_provider.dart';
import 'package:recipes/presentation/categories/categories_screen.dart';
import 'package:recipes/presentation/recipes/recipe_list_screen.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => RecipeBookProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Strings.appTitle,
        theme: ThemeData(
            primarySwatch: Colors.lightGreen,
            accentColor: Colors.orangeAccent,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: 'BubblegumSans'),
        home: CategoriesScreen(),
        routes: {
          RecipeListScreen.ROUTE_NAME: (_) => RecipeListScreen(),
        },
      ),
    );
  }
}
