import 'package:connext/screens/homepage/homefeed/components/cardforadd.dart';
import 'package:flutter/material.dart';

class RecommendCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CardForAdd(
        src:
            'https://www.visa.com.bs/dam/VCOM/regional/lac/ENG/Default/Pay%20With%20Visa/Find%20a%20Card/Prepaid%20Cards/landing-cards/travelmoney-eng-640x404.png',
        height: 100.0,
        width: 180.0,
      ),
    );
  }
}
