import 'package:connext/components/linedivider.dart';
import 'package:connext/components/normalinput.dart';
import 'package:connext/components/roundbutton.dart';
import 'package:connext/components/socialicon.dart';
import 'package:connext/components/textlink.dart';
import 'package:connext/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:http/http.dart' as http;

import 'package:connext/components/Myicon.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

//ส่งข้อมูลไปหลังบ้าน ใช้ final TextEditingController และก็ตั้งชื่อเช่น usernameController
class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repasswordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      //appBar: AppBar(
      // title: Text('Sign Up'),
      // ),
      body: Container(
        color: Colors.white,
        height: size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 50, 16),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  IconButton(
                      alignment: Alignment.center,
                      icon: Icon(Icons.chevron_left),
                      iconSize: 40,
                      onPressed: () {}),
                  TextLink(
                    text: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: kPrimaryDarkColor,
                        fontFamily: 'Roboto-Black',
                        fontSize: 35,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 16,
                ),
                NormalInput(
                  controller: usernameController,
                  topic: 'Username',
                  hintText: 'Sample',
                  icon: MdiIcons.accountCheck,
                ),
                NormalInput(
                  controller: passwordController,
                  topic: 'Password',
                  hintText: 'at least 6 characters',
                  isPassword: true,
                ),
                NormalInput(
                  controller: repasswordController,
                  topic: 'Repeat Password',
                  //hintText: 'At least 6 characters',
                  isPassword: true,
                ),
                NormalInput(
                  controller: emailController,
                  topic: 'Email',
                  hintText: 'Someone@sample.com',
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  //ในปุ่ม sign up เรา match string จาก normal input ต่างๆ กับตัวแปรจาก controller เข้าตัวกับ
                  child: RoundButton(
                    text: 'Sign Up',
                    color: kPrimaryColor,
                    textColor: Colors.white,
                    press: () async {
                      print('data');
                      final String name = nameController.text;
                      final String username = usernameController.text;
                      final String password = passwordController.text;
                      final String email = emailController.text;
                      // match string จาก normal input ต่างๆ กับชื่อตัวแปรรับปลายทาง (ในวงเล็บคือปลายทาง)
                      final _body = {
                        "username": username,
                        "password": password,
                        "name": name,
                        "email": email,
                      };
                      print(_body);
                      // ใส่ปลายทาง
                      final user = await http.post(
                          Uri.parse('http://192.168.1.100:4000/users/signup'),
                          body: _body);
                      print('user');
                      print(user);
                    },
                  ),
                ),
                LineDivider(
                  text: "or",
                ),
                Text(
                  'Login with',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kPrimaryDarkColor,
                    fontFamily: kfontFamily,
                    fontSize: 16,
                  ),
                ),
                // SizedBox(
                // height: 0,
                //   ),
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
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
