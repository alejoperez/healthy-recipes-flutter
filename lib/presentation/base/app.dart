import 'package:flutter/material.dart';
import 'package:recipes/presentation/categories/categories_screen.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recetas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.redAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CategoriesScreen(),
    );
  }
}
