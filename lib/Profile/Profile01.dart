import 'package:connext/components/roundbutton.dart';
import 'package:connext/screens/editprofile/components/topictext.dart';
import 'package:flutter/material.dart';
import 'package:connext/components/textlink.dart';
import 'package:connext/screens/homepage/components/mainbottomnavbar.dart';

class Myprofile01 extends StatefulWidget {
  Myprofile01({Key key}) : super(key: key);

  @override
  _Myprofile01State createState() => _Myprofile01State();
}

class _Myprofile01State extends State<Myprofile01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        //height: size.height,
        width: double.infinity,
        child: ListView(
          children: [
            Container(
              height: 70,
              color: Colors.white,
              child: Row(
                children: [
                  IconButton(
                      alignment: Alignment.center,
                      icon: Icon(Icons.chevron_left),
                      iconSize: 30,
                      onPressed: () {}),
                  SizedBox(
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        fontFamily: 'Kanit-ExtraBold',
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  IconButton(
                    alignment: Alignment.bottomRight,
                    icon: Image.asset(
                      'assets/images/icon-write_1.png',
                      // color: Colors.black,
                    ),
                    iconSize: 30,
                    onPressed: () {},
                  ),
                  IconButton(
                    alignment: Alignment.bottomRight,
                    icon: Image.asset(
                      'assets/images/icon-setting_1-100.jpg',
                      // color: Colors.black,
                    ),
                    iconSize: 30,
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/000.png',
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 30,
                          margin: EdgeInsets.only(top: 10),
                          child: RaisedButton(
                            color: Colors.teal[600],
                            onPressed: () {},
                            child: Text(
                              'My Card',
                              style: TextStyle(
                                  fontFamily: 'Kanit-Extralight',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Row(
                          children: [
                            Text(
                              'Sample',
                              style: TextStyle(
                                  fontFamily: 'Kanit',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            Image.asset(
                              'assets/images/icon-gender_1.png',
                              height: 20,
                              width: 20,
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text('Fisrtname  Lastname',
                            style: TextStyle(
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text('Age    88 years old',
                            style: TextStyle(
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text('Personallity  ENTP',
                            style: TextStyle(
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 195,
                  height: 50,
                  color: Colors.grey,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'My Profile',
                      style: TextStyle(
                          fontFamily: 'Kanit-Regular',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  width: 195,
                  height: 50,
                  color: Colors.white10,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Connection',
                      style: TextStyle(
                          fontFamily: 'Kanit-Regular',
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
            Container(
              height: 70,
              width: 50,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Skill :',
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text('#cooking #programming',
                          style: TextStyle(
                              fontFamily: 'Kanit-Regular',
                              // fontWeight: FontWeight.w900,
                              fontSize: 15))),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(color: Colors.grey[200]),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            Container(
              height: 70,
              width: 50,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Interest :',
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.w900,
                            fontSize: 15)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text('#eating #drinkbeer #sharebun',
                          style: TextStyle(
                              fontFamily: 'Kanit-Regular',
                              //  fontWeight: FontWeight.bold,
                              fontSize: 15))),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(color: Colors.grey[200]),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            Container(
              height: 120,
              width: 40,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Description :',
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.w900,
                            fontSize: 15)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 10, 0),
                    child: Text(
                        'Sample test test hello sharebun go go go to the moooooooooooooooooooooooooooooooooooooooooooooooooooon',
                        style: TextStyle(
                            fontFamily: 'Kanit-Regular',
                            // fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(color: Colors.grey[200]),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            Container(
              height: 140,
              width: 40,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Contact :',
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.w900,
                            fontSize: 15)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text('',
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(color: Colors.grey[200]),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 140,
              width: 40,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Education :',
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.w900,
                            fontSize: 15)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text('',
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(color: Colors.grey[200]),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 140,
              width: 40,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Work Experience :',
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.w900,
                            fontSize: 15)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: Text('',
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(color: Colors.grey[200]),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 40,
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Social Media :',
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontWeight: FontWeight.w900,
                            fontSize: 15)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    // margin: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'assets/images/icon-facebook_1.png',
                          ),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/icon-instagram_1.png',
                          ),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/icon-linkin_1.png',
                          ),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/icon-youtube_1.png',
                          ),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/icon-twitter_1.png',
                          ),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/icon-tiktok_1.png',
                          ),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Image.asset(
                            'assets/images/icon-www_1.png',
                          ),
                          iconSize: 25,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(color: Colors.grey[200]),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
