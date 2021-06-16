import 'package:connext/screens/editprofile/EditProfilePage.dart';
import 'package:connext/screens/homepage/HomePage.dart';
import 'package:connext/screens/login/loginpage.dart';
import 'package:connext/screens/signup/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:connext/constants.dart';
import 'package:connext/components/imagepick.dart';
import 'package:connext/screens/Profile/Profile01.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Myprofile01(),
      //HomePage(),
      //EditProfilePage(),
      //SignUpPage(),
      //Firstlogin(),
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: kfontFamily,
      ),
    );
  }
}
