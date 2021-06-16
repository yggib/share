import 'package:connext/screens/homepage/components/mainbottomnavbar.dart';
import 'package:connext/screens/homepage/homefeed/homefeedpage.dart';
import 'package:connext/screens/homepage/profileinfo/profileinfopage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  var homeFeedPage = HomeFeedPage();
  var profileInfoPage = ProfileInfoPage();
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentmenu = 0;
  Widget _body = HomeFeedPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MainBottomNavBar(
        home: clickHome,
        connext: () {},
        bag: () {},
        ring: () {},
        person: clickPerson,
      ),
      body: _body,
    );
  }

  Future<void> clickHome() async {
    print(currentmenu);
    if (currentmenu != 0) {
      setState(() {
        _body = widget.homeFeedPage;
      });
      currentmenu = 0;
    }
    print(currentmenu);
  }

  Future<void> clickPerson() async {
    print(currentmenu);
    if (currentmenu != 4) {
      setState(() {
        _body = widget.profileInfoPage;
      });
    }
    currentmenu = 4;
    print(currentmenu);
  }
}
