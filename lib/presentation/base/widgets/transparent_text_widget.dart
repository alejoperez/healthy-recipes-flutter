import 'package:flutter/material.dart';

class TransparentTextWidget extends StatelessWidget {
  final String text;

  const TransparentTextWidget({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.black54,
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline6
                .apply(color: Colors.white),
          ),
        ),
      );
}
