import 'package:connext/components/profileimage.dart';
import 'package:connext/components/roundimage.dart';
import 'package:connext/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HeadInfo extends StatefulWidget {
  @override
  _HeadInfoState createState() => _HeadInfoState();
}

class _HeadInfoState extends State<HeadInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryBackgroundColor,
      height: 200,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Row(
          children: [
            ClipOval(
              child: Image(
                image: NetworkImage(
                    'https://pyxis.nymag.com/v1/imgs/180/c21/43215cdda0adde4e5caefe7a24791a0a7f-blackpink-mac.rsquare.w700.jpg'),
                height: 100.0,
                width: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 15, 15, 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'SAMPLE',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryDarkColor,
                        ),
                      ),
                      Icon(MdiIcons.genderMaleFemale)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  dataText(
                    'FIRSTNAME LASTNAME',
                  ),
                  dataText(
                    'Age 88 years',
                  ),
                  dataText(
                    'Position Projects Manager',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget dataText(data) {
    return Text(
      data,
      style: TextStyle(
        color: kPrimaryDarkColor,
      ),
    );
  }
}
