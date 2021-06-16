import 'package:connext/constants.dart';
import 'package:connext/screens/homepage/homefeed/components/recommendcard.dart';
import 'package:connext/screens/homepage/profileinfo/screens/components/searchtext.dart';
import 'package:flutter/material.dart';

class MyConnectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryLightColor,
      constraints: BoxConstraints(
        maxHeight: double.infinity, // So Cool !! is it autofit container
      ),
      child: Column(
        children: [
          SearchText(),
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
    );
  }
}
