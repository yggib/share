import 'package:flutter/material.dart';
import 'package:connext/components/inputtextfield.dart';
import 'package:connext/constants.dart';

class RoundInputPassword extends StatefulWidget {
  ValueChanged<String> onChanged;
  final String hintText = "Password";
  @override
  _RoundInputPasswordState createState() => _RoundInputPasswordState();
}

class _RoundInputPasswordState extends State<RoundInputPassword> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return InputTextField(
        child: TextField(
      obscureText: !_showPassword,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        hintText: widget.hintText,
        //icon: Icon(
        // Icons.vpn_key,
        // color: kPrimaryDarkColor,
        //),
        // suffixIcon: IconButton(
        //icon:
        //   _showPassword ? Icon(Icons.lock_open) : Icon(Icons.lock_outline),
        //   onPressed: _togglevisibility,
        //   color: kPrimaryDarkColor,
        //),
        border: InputBorder.none,
      ),
    ));
  }

  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }
}
