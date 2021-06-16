import 'package:connext/components/bottombarbotton.dart';
import 'package:connext/constants.dart';
import 'package:flutter/material.dart';

class MenuInfo extends StatefulWidget {
  final Function actionMyProfile;
  final Function actionConnection;

  const MenuInfo({
    Key key,
    this.actionMyProfile,
    this.actionConnection,
  }) : super(key: key);
  @override
  _MenuInfoState createState() => _MenuInfoState();
}

class _MenuInfoState extends State<MenuInfo> {
  int _selectedIndex = 0;
  Color selectedBackgroundColor = kPrimaryLighterColor;
  Color foreColor = kPrimaryDarkColor;
  Color unselectedBackgroundColor = kPrimaryLightColor;
  @override
  Widget build(BuildContext context) {
    Color changeColor(int index) {
      return _selectedIndex == index
          ? selectedBackgroundColor
          : unselectedBackgroundColor;
    }

    Widget customBotton(String text, int index, Function action) {
      return Expanded(
        child: BottomBarBotton(
          text: text,
          backgroundColor: changeColor(index),
          foreColor: foreColor,
          onpress: () {
            setState(() {
              _selectedIndex != index ? _selectedIndex = index : null;
            });
            action == null ? () {}() : action();
          },
        ),
      );
    }

    return Row(
      children: [
        customBotton('My Profile', 0, widget.actionMyProfile),
        customBotton('Connection', 1, widget.actionConnection),
      ],
    );
  }
}
