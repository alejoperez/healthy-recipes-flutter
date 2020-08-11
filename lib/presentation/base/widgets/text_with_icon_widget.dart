import 'package:flutter/material.dart';

class TextWithIconWidget extends StatelessWidget {
  final IconData iconData;
  final String text;
  final TextStyle style;

  const TextWithIconWidget(
      {Key key,
      @required this.iconData,
      @required this.text,
      @required this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Icon(iconData),
          SizedBox(width: 6),
          Text(
            text,
            style: style,
          )
        ],
      );
}
