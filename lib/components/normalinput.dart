import 'package:connext/components/containerwidth.dart';
import 'package:connext/components/normaltextfield.dart';
import 'package:flutter/material.dart';
import 'package:connext/components/inputtextfield.dart';
import 'package:connext/constants.dart';

class NormalInput extends StatefulWidget {
  final TextEditingController controller; //เพิ่ม skill ส่งค่าไปหลังบ้าน
  final String topic;
  final String hintText;
  final String mark;
  final bool isPassword;
  final bool isMultipleLine;
  final IconData icon;
  final IconData iconButton;
  final ValueChanged<String> onChanged;
  //final DropdownButton dropdownButton;

  const NormalInput({
    Key key,
    this.topic,
    this.hintText,
    this.mark,
    this.isPassword = false,
    this.isMultipleLine = false,
    this.icon,
    this.iconButton,
    this.onChanged,
    this.controller,
    //this.dropdownButton,
  }) : super(key: key);
  @override
  _NormalInputState createState() => _NormalInputState();
}

class _NormalInputState extends State<NormalInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContainerWidth(
          margin: EdgeInsets.only(top: 10),
          // padding: EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            children: [
              Text(
                widget.topic,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryDarkColor,
                  fontFamily: kfontFamily,
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: widget.mark != null
                    ? Text(
                        widget.mark != null ? '' : widget.mark,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kPrimaryDarkColor,
                          fontFamily: kfontFamily,
                          fontSize: 18,
                        ),
                      )
                    : (widget.iconButton == null
                        ? Icon(null)
                        : Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              widget.iconButton,
                            ),
                          )),
              ),
            ],
          ),
        ),
        NormalTextField(
          controller: widget
              .controller, //เพิ่ม skill ส่งค่าไปหลังบ้านที่ combo กับ texteditingcontrller
          hintText: widget.hintText,
          isPassword: widget.isPassword,
          onChanged: widget.onChanged,
          isMultipleLine: widget.isMultipleLine,
          icon: widget.icon,
        )
      ],
    );
  }
}
