import 'package:flutter/material.dart';

enum HeaderImageType { ASSET, NETWORK }

class LargeHeaderWidget extends StatelessWidget {
  final String text;
  final HeaderImageType type;
  final String imageSrc;

  const LargeHeaderWidget(
      {Key key,
      @required this.text,
      @required this.type,
      @required this.imageSrc})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(children: [
        if (type == HeaderImageType.ASSET)
          Image.asset(
            imageSrc,
            height: 350,
            width: double.infinity,
            fit: BoxFit.cover,
          )
        else if (type == HeaderImageType.NETWORK)
          Image.network(
            imageSrc,
            height: 350,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        Container(
          color: Colors.black54,
          height: 350,
          width: double.infinity,
          child: Center(
              child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline2
                .apply(color: Colors.white),
          )),
        )
      ]);
}
