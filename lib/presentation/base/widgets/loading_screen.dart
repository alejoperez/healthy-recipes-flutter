import 'package:flutter/material.dart';
import 'package:recipes/presentation/base/widgets/response_widget.dart';

class LoadingScreen extends StatelessWidget {
  final String appBarTitle;

  const LoadingScreen({Key key, @required this.appBarTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
      smallScreen: Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
        ),
        body: Center(child: CircularProgressIndicator()),
      ),
      largeScreen: Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ));
}
