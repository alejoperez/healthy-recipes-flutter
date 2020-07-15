import 'package:flutter/material.dart';
import 'package:recipes/presentation/base/response_widget.dart';
import 'package:recipes/presentation/base/strings.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(Strings.appTitle)),
        body: ResponsiveWidget(
          smallScreen: Center(child: Text('Small Screen Title')),
          largeScreen: Center(child: Text('Large Screen Title')),
        ));
  }
}
