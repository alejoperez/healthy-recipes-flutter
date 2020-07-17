import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes/presentation/base/app/strings.dart';
import 'package:recipes/presentation/categories/categories_provider.dart';
import 'package:recipes/presentation/categories/categories_screen.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: Strings.appTitle,
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          accentColor: Colors.orangeAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => CategoriesProvider())
          ],
          child: CategoriesScreen(),
        ));
  }
}
