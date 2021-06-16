import 'package:connext/components/roundbutton.dart';
import 'package:connext/constants.dart';
import 'package:flutter/material.dart';

class CardForAdd extends StatelessWidget {
  final src;
  final width;
  final height;
  const CardForAdd({
    Key key,
    this.src,
    this.width,
    this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Column(
        children: [
          Image(
            image: NetworkImage(src),
            height: height,
            width: width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'username',
                    style: TextStyle(
                      color: kPrimaryDarkColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'ADD',
                      style: TextStyle(
                        color: kPrimaryBackgroundColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: kPrimaryColor,
                    ),
                  ),
                ),
                /*Container(
                  //margin: EdgeInsets.symmetric(vertical: 0),
                  width: 50,
                  height: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'ADD',
                        style: TextStyle(
                          color: kPrimaryBackgroundColor,
                          fontSize: 16,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        textStyle: kTextStyle,
                      ),
                    ),
                  ),*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}
