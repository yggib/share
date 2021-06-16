import 'package:connext/components/inputtextfield.dart';
import 'package:connext/constants.dart';
import 'package:flutter/material.dart';

class CheckBoxInput extends StatefulWidget {
  final text;
  const CheckBoxInput({
    Key key,
    this.text,
  }) : super(key: key);
  @override
  _CheckBoxInputState createState() => _CheckBoxInputState();
}

class _CheckBoxInputState extends State<CheckBoxInput> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //alignment: Alignment(0.5, 0.1),
      //margin: EdgeInsets.symmetric(horizontal: 10),
      // padding: EdgeInsets.symmetric(horizontal: 1, vertical: 0),
      width: size.width * .875, //ใช้ขยับกล่อง
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Checkbox(
            //checkColor: Colors.greenAccent,
            activeColor: kPrimaryColor,
            value: valuefirst,
            onChanged: (bool value) {
              setState(() {
                this.valuefirst = value;
              });
            },
          ),
          Text(
            widget.text,
            style: TextStyle(
                color: kPrimaryDarkColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto-Light'),
          ),
        ],
      ),
    );
  }
}
