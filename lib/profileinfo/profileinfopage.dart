import 'package:connext/components/containerwidth.dart';
import 'package:connext/constants.dart';
import 'package:connext/screens/editprofile/EditProfilePage.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:connext/screens/homepage/profileinfo/components/headinfo.dart';
import 'package:connext/screens/homepage/profileinfo/components/menuinfo.dart';
import 'package:connext/screens/homepage/profileinfo/screens/myconnect.dart';
import 'package:connext/screens/homepage/profileinfo/screens/myprofilepage.dart';
import 'package:flutter/material.dart';

class ProfileInfoPage extends StatefulWidget {
  var myProfilePage = MyProfilePage();
  var myConnection = MyConnectPage();

  @override
  _ProfileInfoPageState createState() => _ProfileInfoPageState();
}

class _ProfileInfoPageState extends State<ProfileInfoPage> {
  Widget _body = MyProfilePage();
  int currentmenu = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Future<void> actionClick(int menuIndex, Widget page) async {
      print(menuIndex);
      if (currentmenu != menuIndex) {
        setState(() {
          _body = page;
          print(_body);
        });
        currentmenu = menuIndex;
      }
    }

    return Container(
      color: kPrimaryLighterColor,
      height: size.height,
      width: double.infinity,
      child: ListView(
        children: [
          AppBar(
            title: Text("Profile"),
            actions: [
              GestureDetector(
                onTap: () {
                  print('tap');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfilePage()),
                  );
                },
                child: Icon(
                  MdiIcons.squareEditOutline,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.settings_outlined),
              ),
            ],
          ),
          HeadInfo(),
          MenuInfo(actionMyProfile: () {
            actionClick(0, widget.myProfilePage);
          }, actionConnection: () {
            actionClick(1, widget.myConnection);
          }),
          _body,
        ],
      ),
    );
  }
}
