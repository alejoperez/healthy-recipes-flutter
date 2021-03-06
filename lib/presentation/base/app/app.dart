import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes/presentation/base/app/strings.dart';
import 'package:recipes/presentation/base/providers/recipe_book_provider.dart';
import 'package:recipes/presentation/base/widgets/not_found_screen.dart';
import 'package:recipes/presentation/categories/categories_screen.dart';
import 'package:recipes/presentation/recipes/detail/recipe_detail_screen.dart';
import 'package:recipes/presentation/recipes/list/recipe_list_screen.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => RecipeBookProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Strings.appTitle,
        theme: ThemeData(
            canvasColor: Color.fromRGBO(224, 242, 241, 1),
            fontFamily: 'QarmicSans',
            primarySwatch: Colors.teal,
            accentColor: Colors.teal,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            dividerColor: Colors.black12),
        initialRoute: CategoriesScreen.ROUTE_NAME,
        routes: {
          CategoriesScreen.ROUTE_NAME: (_) => CategoriesScreen(),
          RecipeListScreen.ROUTE_NAME: (_) => RecipeListScreen(),
          RecipeDetailScreen.ROUTE_NAME: (_) => RecipeDetailScreen(),
        },
        onUnknownRoute: (settings) =>
            MaterialPageRoute(builder: (_) => NotFoundScreen()),
      ),
    );
  }
}
