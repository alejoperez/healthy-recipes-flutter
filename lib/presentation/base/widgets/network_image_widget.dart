import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class NetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  const NetworkImageWidget(
      {Key key,
      @required this.imageUrl,
      @required this.width,
      @required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) => FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: imageUrl,
        fit: BoxFit.cover,
        height: height,
        width: width,
      );
}
