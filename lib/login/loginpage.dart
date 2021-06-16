import 'dart:ui';

import 'package:connext/components/alreadyHaveAnAccount.dart';
import 'package:connext/components/checkboxinput.dart';
import 'package:connext/components/linedivider.dart';
import 'package:connext/components/roundbutton.dart';
import 'package:connext/components/socialicon.dart';
import 'package:connext/components/textlink.dart';
import 'package:connext/constants.dart';
import 'package:connext/screens/login/components/roundinput.dart';
import 'package:connext/screens/login/components/roundinputpassword.dart';
import 'package:flutter/material.dart';

import 'package:connext/components/GradientButton.dart';
//import 'package:connext/components/responsive.dart';
import 'package:connext/components/Myicon.dart';

class Firstlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Colors.grey),
      body: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: size.height,
        width: double.infinity,
        child: ListView(
          //alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Image(
                  image: AssetImage('assets/images/Logo-ShareBun.jpg'),
                  height: 100,
                  width: 250,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 320,
                  child: RoundInput(
                    hintText: 'Username/email',
                    //icon: Icons.person,
                  ),
                ),
                SizedBox(
                  width: 320,
                  child: RoundInputPassword(),
                ),
                SizedBox(
                  //width: 320,
                  child: CheckBoxInput(text: 'Auto login'),
                ),
                RaisedGradientButton(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromRGBO(72, 159, 163, 1),
                        Color.fromRGBO(244, 173, 110, 1),
                        Color.fromRGBO(191, 70, 117, 1)
                      ],
                    ),
                    onPressed: () {
                      print('button clicked');
                    }),

                //Container(
                //decoration: BoxDecoration(
                // gradient: LinearGradient(
                // colors: [],
                // ),
                // ),
                // width: 320,
                // height: 60,
                //child: RoundButton(
                // text: 'LOGIN',
                //color: kPrimaryColor,

                // textColor: Colors.white,
                // press: () {},
                //),
                // ),

                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 320,
                  child: TextLink(
                    text: Text(
                      'Forget Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kPrimaryDarkColor,
                        fontFamily: kfontFamily,
                        fontSize: 16,
                      ),
                    ),
                    press: () {
                      print('click');
                    },
                  ),
                ),
                SizedBox(
                  child: LineDivider(
                    text: "or",
                  ),
                ),
                SizedBox(
                  child: Text(
                    'Login with',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kPrimaryDarkColor,
                      fontFamily: kfontFamily,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                  child: Row(
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
                        padding: EdgeInsets.all(20),
                      ),
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.gplus_circled,
                          size: 35.0,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {});
                        },
                        padding: EdgeInsets.all(20),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 120,
                ),

                Container(
                  width: 400,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: AlreadyHaveAnAccount(
                    login: true,
                    press: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
