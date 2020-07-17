import 'package:flutter/material.dart';
import 'package:recipes/presentation/base/app/app.dart';
import 'package:recipes/presentation/base/app/dependency_injection.dart';

void main() {
  DependencyInjection.init();
  runApp(RecipesApp());
}
