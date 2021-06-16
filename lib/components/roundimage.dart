import 'package:flutter/material.dart';

class RoundImage extends StatelessWidget {
  final String src;
  final double height;
  final double width;

  const RoundImage({
    Key key,
    this.src,
    this.height,
    this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image(
        image: NetworkImage(src),
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
