import 'package:flutter/material.dart';

class ContainerWidth extends StatelessWidget {
  final margin;
  final padding;
  final decoration;
  final child;
  final width;

  const ContainerWidth({
    Key key,
    this.child,
    this.margin,
    this.padding,
    this.decoration,
    this.width = 0.8,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: margin,
      padding: padding,
      decoration: decoration != null ? decoration : BoxDecoration(),
      width: size.width * width,
      child: child,
    );
  }
}
