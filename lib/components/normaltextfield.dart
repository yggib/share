import 'package:connext/components/containerwidth.dart';
import 'package:connext/constants.dart';
import 'package:flutter/material.dart';

class NormalTextField extends StatefulWidget {
  final TextEditingController controller; //เพิ่ม skill ส่งค่าไปหลังบ้าน
  final String hintText;
  final bool isPassword;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final bool isMultipleLine;

  const NormalTextField({
    Key key,
    this.hintText,
    this.isPassword = false,
    this.icon,
    this.onChanged,
    this.isMultipleLine = false,
    this.controller,
  }) : super(key: key);
  @override
  _NormalTextFieldState createState() => _NormalTextFieldState();
}

class _NormalTextFieldState extends State<NormalTextField> {
  @override
  Widget build(BuildContext context) {
    return ContainerWidth(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.isPassword,
        onChanged: widget.onChanged,
        keyboardType: widget.isMultipleLine
            ? TextInputType.multiline
            : TextInputType.text,
        minLines: widget.isMultipleLine
            ? 5
            : 1, //Normal textInputField will be displayed
        maxLines: widget.isMultipleLine ? 5 : 1,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: widget.icon != null ? Icon(widget.icon) : Icon(null),
            onPressed: () {},
            color: kPrimaryDarkColor,
          ),
        ),
      ),
    );
  }
}
