import 'package:flutter/material.dart';
import 'package:connext/components/profileimage.dart';
import 'package:connext/constants.dart';

class InputProfileImage extends StatelessWidget {
  final press;
  const InputProfileImage({
    Key key,
    this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ProfileImage(
      child: Positioned(
        bottom: 1,
        right: 1,
        child: Container(
          height: 40,
          width: 40,
          child: GestureDetector(
            onTap: press,
            child: Icon(
              Icons.add_a_photo,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
    );
  }
}
