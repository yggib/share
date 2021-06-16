import 'package:connext/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainBottomNavBar extends StatefulWidget {
  final home;
  final connext;
  final bag;
  final ring;
  final person;

  const MainBottomNavBar({
    Key key,
    this.home,
    this.connext,
    this.bag,
    this.ring,
    this.person,
  }) : super(key: key);
  @override
  _MainBottomNavBarState createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return CustomBottomNavBar(
      bottomNavigatorBarItemList: [
        bottomItem(Icons.home),
        bottomItem(Icons.connect_without_contact),
        bottomItem(Icons.home_repair_service),
        bottomItem(MdiIcons.bell),
        bottomItem(Icons.account_circle),
      ],
      actionList: [
        widget.home,
        widget.connext,
        widget.bag,
        widget.ring,
        widget.person,
      ],
    );
  }
}

BottomNavigationBarItem bottomItem(IconData icon) {
  return BottomNavigationBarItem(
    icon: Icon(
      icon,
      size: 30,
    ),
    label: '',
  );
}

class CustomBottomNavBar extends StatefulWidget {
  final List<BottomNavigationBarItem> bottomNavigatorBarItemList;
  final List<Function> actionList;

  const CustomBottomNavBar({
    Key key,
    this.bottomNavigatorBarItemList,
    this.actionList,
  }) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.actionList[index]();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: widget.bottomNavigatorBarItemList,
        currentIndex: _selectedIndex,
        unselectedItemColor: Color(0xff818181),
        /*unselectedLabelStyle: TextStyle(
          color: kPrimaryDarkColor,
          fontWeight: FontWeight.bold,
        ),*/
        selectedItemColor: kPrimaryColor,
        /*selectedLabelStyle: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),*/
        onTap: _onItemTapped,
        backgroundColor: kPrimaryBackgroundColor);
  }
}
