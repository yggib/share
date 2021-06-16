import 'package:connext/components/containerwidth.dart';
import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  final Text text;
  final Function press;

  const TextLink({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          press();
        },
        child: text,
      ),
    );
  }
}
