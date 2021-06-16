import 'package:connext/components/containerwidth.dart';
import 'package:flutter/material.dart';
import 'package:connext/constants.dart';

class LineDivider extends StatelessWidget {
  final String text;
  const LineDivider({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ContainerWidth(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      child: Row(
        children: <Widget>[
          BuildDivider(),
          text != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: kPrimaryDarkColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      fontFamily: 'Roboto-Black',
                    ),
                  ),
                )
              : BuildDivider(),
          BuildDivider(),
        ],
      ),
    );
  }
}

class BuildDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        color: kPrimaryDarkColor,
        height: 1,
        thickness: 1.5,
      ),
    );
  }
}
