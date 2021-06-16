import 'package:connext/constants.dart';
import 'package:flutter/material.dart';

class BottomBarBotton extends StatelessWidget {
  final text;
  final backgroundColor;
  final foreColor;
  final onpress;

  const BottomBarBotton({
    Key key,
    this.text,
    this.backgroundColor = kPrimaryColor,
    this.foreColor = kPrimaryBackgroundColor,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: TextButton(
        onPressed: onpress != null ? onpress : () {},
        child: Text(
          text,
          style: TextStyle(
            color: foreColor,
            fontSize: 18,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          textStyle: kTextStyle,
        ),
      ),
    );
  }
}
