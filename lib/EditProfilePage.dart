import 'package:connext/components/bottombarbotton.dart';
import 'package:connext/components/inputprofileimage.dart';
import 'package:connext/components/linedivider.dart';
import 'package:connext/components/normalinput.dart';
import 'package:connext/components/normaltextfield.dart';
import 'package:connext/constants.dart';
import 'package:connext/screens/editprofile/components/topictext.dart';
import 'package:connext/screens/editprofile/objects/dictionary.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:connext/components/textlink.dart';
import 'package:path/path.dart';
import 'package:connext/components/Myicon.dart';

class EditProfilePage extends StatefulWidget {
  var language = 0;

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  String genderChoose;
  List listItem = ["male", "female", "LGBT"];
  @override
  Widget build(BuildContext context) {
    var language = widget.language;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomBarBotton(
        text: 'Save Change',
      ),
      //appBar: AppBar(
      // title: Text('Sign Up'),
      //actions: <Widget>[
      // GestureDetector(
      // onTap: () {
      //setState(() {
      // if (widget.language == 0) {
      //  widget.language = 1;
      //  } else {
      //     widget.language = 0;
      //   }
      //  });
      // },
      //   child: Icon(Icons.language),
      //  ),
      //  ],
      // ),
      body: Container(
        color: Colors.white,
        height: size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 16, 0, 20),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              IconButton(
                  alignment: Alignment.center,
                  icon: Icon(Icons.chevron_left),
                  iconSize: 30,
                  onPressed: () {}),
              TextLink(
                text: Text(
                  'Edit Profile',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Roboto-Black',
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 150)),
              TextButton(
                onPressed: () {},
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    'Skip',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontFamily: 'Roboto-Black',
                      fontSize: 20,
                    ),
                  ),
                ]),
              )
            ]),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            Column(
              children: [
                InputProfileImage(),
                //NormalInput(
                //topic: dict_username[language],
                //hintText: dict_example[language],
                //icon: MdiIcons.accountCheck,
                // ),
                LineDivider(),
                TopText(
                  text: 'Basic information',
                ),
                NormalInput(
                  topic: dict_name[language],
                  hintText: 'first name',
                ),
                NormalInput(
                  topic: dict_name[language],
                  hintText: 'last name',
                ),
                NormalInput(
                  topic: dict_birthday[language],
                  hintText: '01 JAN 21',
                  icon: Icons.calendar_today,
                ),

                NormalInput(
                    // dropdownButton:
                    //Container(
                    // padding: EdgeInsets.fromLTRB(40, 10, 40, 10),

                    //child: DropdownButton(
                    //hint: Text('Gender'),
                    //dropdownColor: Colors.grey,
                    //style: TextStyle(color: Colors.amber),
                    //icon: Icon(Icons.arrow_drop_down),
                    //isExpanded: true,
                    //value: genderChoose,
                    //onChanged: (newValue) {
                    //setState(() {
                    //genderChoose = newValue;
                    //});
                    //},
                    //items: listItem.map((valueitem) {
                    //return DropdownMenuItem(
                    //value: valueitem,
                    //child: Text(valueitem),
                    //);
                    //}).toList(),
                    //),
                    topic: dict_gender[language],
                    hintText: 'LGBT',
                    icon: Icons.arrow_drop_down),

                NormalInput(
                  topic: dict_skill[language],
                  hintText: 'List all your skills by hashtag here',
                ),
                NormalInput(
                  topic: dict_interest[language],
                  hintText: 'Add hashtag about your interests and passion',
                ),
                NormalInput(
                  topic: dict_description[language],
                  hintText: '',
                  isMultipleLine: true,
                ),
                //NormalTextField(
                // hintText: 'Add # to descript yourself',
                //),
                LineDivider(),
                TopText(
                  text: 'Contact',
                ),
                NormalInput(
                  topic: 'Living Area',
                  hintText: 'Add your city',
                  //icon: MdiIcons.earth,
                ),
                NormalInput(
                  topic: 'Email',
                  //hintText: 'Email',
                  //icon: MdiIcons.accountMultiple,
                ),
                NormalInput(
                  topic: 'Phone',
                  // hintText: 'Phone',
                  // icon: MdiIcons.accountMultiple,
                ),
                NormalInput(
                  topic: 'Line ID',
                  //hintText: '@Line',
                  //icon: MdiIcons.lock,
                ),
                LineDivider(),
                TopText(
                  text: 'Education',
                ),
                NormalInput(
                  topic: 'Highschool',
                  hintText: '',
                  iconButton: Icons.add_circle_outline,
                ),
                NormalInput(
                  topic: 'Institute',
                  hintText: '',
                  iconButton: Icons.add_circle_outline,
                ),
                LineDivider(),
                TopText(
                  text: 'Work Information',
                ),
                NormalInput(
                  topic: 'Work experience',
                  hintText: '2010-2012 - Admin Social Media - บริษัท',
                  iconButton: Icons.add_circle_outline,
                ),
                NormalTextField(),
                LineDivider(),

                TopText(
                  text: 'Social Media',
                  //iconButton1: Icons.edit_outlined,
                  iconButton2: Icons.add_circle_outline,
                ),
                // SizedBox(height: 50),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        MyFlutterApp.facebook_circled,
                        size: 35.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                      padding: EdgeInsets.all(10),
                    ),
                    IconButton(
                      icon: Icon(
                        Socialicon.instagram,
                        size: 35.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                      padding: EdgeInsets.all(10),
                    ),
                    IconButton(
                      icon: Icon(
                        Socialicon.linkedin_rect,
                        size: 35.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                      padding: EdgeInsets.all(10),
                    ),
                    IconButton(
                      icon: Icon(
                        Socialicon.twitter_bird,
                        size: 35.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                      padding: EdgeInsets.all(10),
                    ),
                    IconButton(
                      icon: Icon(
                        Socialicon.globe,
                        size: 35.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                      padding: EdgeInsets.all(10),
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
