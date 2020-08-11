import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget smallScreen;
  final Widget largeScreen;

  const ResponsiveWidget(
      {Key key, @required this.smallScreen, @required this.largeScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return largeScreen;
        }
        return smallScreen;
      },
    );
  }
}
