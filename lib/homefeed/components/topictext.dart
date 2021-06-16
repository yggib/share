import 'package:connext/constants.dart';
import 'package:flutter/material.dart';

class TopicText extends StatelessWidget {
  final text;
  final iconButton1;
  final iconButton2;

  const TopicText({
    Key key,
    this.text,
    this.iconButton1,
    this.iconButton2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.95,
      child: Row(
        children: [
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: kPrimaryDarkColor,
                fontWeight: FontWeight.w600,
                fontFamily: kfontFamily,
                fontSize: 20,
              ),
            ),
          ),
          (iconButton1 == null
              ? Icon(null)
              : Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    iconButton1,
                  ),
                )),
          (iconButton2 == null
              ? Icon(null)
              : Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    iconButton2,
                  ),
                )),
        ],
      ),
    );
  }
}
