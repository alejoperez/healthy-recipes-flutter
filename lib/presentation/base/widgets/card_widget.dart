import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget child;

  const CardWidget({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) => Card(
        elevation: 8,
        margin: const EdgeInsets.all(8),
        child: child,
      );
}
