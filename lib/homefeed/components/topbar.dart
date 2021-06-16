import 'package:connext/components/searchbox.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TopBar extends StatefulWidget {
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
      //padding: padding,
      //decoration: decoration != null ? decoration : BoxDecoration(),
      width: size.width * 0.95,
      child: Row(
        children: [
          Expanded(
            child: SearchBox(
              hintText: 'Hashtag/Username/NFT',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              MdiIcons.chatProcessingOutline,
              size: 30,
            ),
          ),
          Icon(
            Icons.settings_outlined,
            size: 30,
          ),
        ],
      ),
    );
  }
}
