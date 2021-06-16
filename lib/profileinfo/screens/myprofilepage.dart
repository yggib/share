import 'package:connext/components/containerwidth.dart';
import 'package:connext/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'getdata.dart';

/*class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryLighterColor,
      height: 1000,
      width: double.infinity,
      child: ListView(
        children: [
          InfoTopic(
            topic: 'Description',
            child: Text(
                'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
          ),
          InfoTopic(
            topic: 'Description',
            child: Text(
                'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
          ),
          InfoTopic(
            topic: 'Description',
            child: Text(
                'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),
          ),
        ],
      ),
    );
  }
}
*/

void main() {
  runApp(MyProfilePage());
}

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  //รับ API จากภายนอก --> รับ package http
// เรียกไฟล์ Getdata ที่ใส่ข้อมูลที่แปลงจาก JSON
  Getdata userProfile;

//สั่งให้บางตัวแปร run ก่อนเริ่มแอปฯ
  void initState() {
    super.initState();
    getuserinfo();
  }

//รับข้อมูล จาก Uri ด้านล่าง โดยเรียกไฟล์จากอีกหน้ามา
  @override
  Future<void> getuserinfo() async {
    var url = "http://192.168.1.100:4000/profile/showprofile?username=user";
    var response = await http.get(Uri.parse(url));
    print(response.body);
    setState(() {
      userProfile = getdataFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7),
      child: Container(
          color: kPrimaryLighterColor,
          constraints: BoxConstraints(
            maxHeight: double.infinity, // So Cool !! is it autofit container
          ),
          child: Column(
            children: [
              InfoTopic(
                topic: 'Description',
                child: Text(
                    'Sample sampl example is a sample so so so so so so so so so so longggggggggggggg #Thaiprogrammer #wecandoeverything'),
              ),
              InfoTopic(
                topic: 'Contact',
                child: Column(
                  children: [
                    SubInfo(
                        topic: 'Living Area',
                        info: userProfile?.livingArea ??
                            "Loading"), //เรียกในค่า Living Area ที่อยู่่ใน ตัวแปร userProfile (ซึ่งเป็นตัวแปรที่มีค่า getdataFromJSON จากอีกหน้าอยู่)
                    SubInfo(
                        topic: 'Email', info: userProfile?.email ?? "Loading"),
                    SubInfo(
                        topic: 'Phone number',
                        info: userProfile?.phone ?? "Loading"),
                    SubInfo(
                        topic: 'Line ID',
                        info: userProfile?.lineId ?? "Loading"),
                  ],
                ),
              ),
              InfoTopic(
                topic: 'Education',
                child: Column(
                  children: [
                    SubInfo(topic: 'Hightschool', info: 'Highschool name'),
                    SubInfo(topic: 'Univeristy', info: 'University name'),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          )),
    );
  }
}

class SubInfo extends StatelessWidget {
  final topic;
  final info;

  const SubInfo({Key key, this.topic, this.info}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: Text(topic)),
        Expanded(flex: 3, child: Text('-  ' + info)),
      ],
    );
  }
}

class InfoTopic extends StatelessWidget {
  final topic;
  final child;
  const InfoTopic({
    Key key,
    this.topic,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryBackgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    topic + " :",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
