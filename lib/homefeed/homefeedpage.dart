import 'package:connext/components/linedivider.dart';
import 'package:connext/components/searchbox.dart';
import 'package:connext/screens/homepage/homefeed/components/recommendcard.dart';
import 'package:connext/screens/homepage/homefeed/components/topbar.dart';
import 'package:connext/screens/homepage/homefeed/components/topictext.dart';
import 'package:flutter/material.dart';
import 'package:connext/screens/editprofile/components/topictext.dart';

import 'components/cardforadd.dart';

class HomeFeedPage extends StatefulWidget {
  @override
  _HomeFeedPageState createState() => _HomeFeedPageState();
}

class _HomeFeedPageState extends State<HomeFeedPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white, //kPrimaryLighterColor,
      height: size.height,
      width: double.infinity,
      child: ListView(
        children: [
          Column(
            children: [
              TopBar(),
              TopicText(text: 'Recommend'),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    RecommendCard(),
                    RecommendCard(),
                    RecommendCard(),
                    RecommendCard(),
                  ],
                ),
              ),
              LineDivider(),
              TopicText(text: 'Connection'),
              GridView.count(
                shrinkWrap: true,
                primary: false,
                childAspectRatio: MediaQuery.of(context).size.height /
                    580, //ปกติมันจะเป็น 4เหลี่ยมจตุรัส ทำให้ความสูงน้อยลง
                padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                crossAxisCount: 2,
                children: <Widget>[
                  RecommendCard(),
                  RecommendCard(),
                  RecommendCard(),
                  RecommendCard(),
                  RecommendCard(),
                  RecommendCard(),
                  RecommendCard(),
                  RecommendCard(),
                  RecommendCard(),
                  RecommendCard(),
                  RecommendCard(),
                  RecommendCard(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
