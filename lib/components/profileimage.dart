import 'package:flutter/material.dart';
import 'package:connext/components/roundimage.dart';

class ProfileImage extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;

  const ProfileImage({
    Key key,
    this.child,
    this.height = 150,
    this.width = 150,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      //width: size.width * 0.8,
      child: Stack(
        children: <Widget>[
          RoundImage(
            src:
                'https://pyxis.nymag.com/v1/imgs/180/c21/43215cdda0adde4e5caefe7a24791a0a7f-blackpink-mac.rsquare.w700.jpg',
            height: height,
            width: width,
          ),
          child != null
              ? child
              : Container(
                  height: 0,
                  width: 0,
                ),
        ],
      ),
    );
  }
}
