import 'package:connext/components/containerwidth.dart';
import 'package:flutter/material.dart';
import 'package:connext/constants.dart';

class InputTextField extends StatelessWidget {
  final Widget child;
  const InputTextField({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerWidth(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: child,
    );
  }
}
