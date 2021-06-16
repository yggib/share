import 'package:flutter/material.dart';
import 'package:connext/components/inputtextfield.dart';
import 'package:connext/constants.dart';

class RoundInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundInput({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputTextField(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          //icon: Icon(
          //icon,
          //color: kPrimaryDarkColor,
          //),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
