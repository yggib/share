import 'package:connext/components/containerwidth.dart';
import 'package:connext/components/normaltextfield.dart';
import 'package:connext/constants.dart';
import 'package:flutter/material.dart';

class SearchText extends StatefulWidget {
  final hintText;
  final icon;
  final onChanged;

  const SearchText({
    Key key,
    this.hintText = 'Hashtag/Username/Code',
    this.icon = Icons.search,
    this.onChanged,
  }) : super(key: key);
  @override
  _SearchTextState createState() => _SearchTextState();
}

class _SearchTextState extends State<SearchText> {
  @override
  Widget build(BuildContext context) {
    return ContainerWidth(
      width: 0.95,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 2),
      decoration: BoxDecoration(
        color: kPrimaryBackgroundColor,
      ),
      child: TextField(
        onChanged: widget.onChanged,
        style: TextStyle(
          fontSize: 16,
        ),
        decoration: InputDecoration(
          //contentPadding: EdgeInsets.all(8),
          //isDense: true,
          //contentPadding: const EdgeInsets.symmetric(vertical: 0),
          hintText: widget.hintText,
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: widget.icon != null ? Icon(widget.icon) : Icon(null),
            onPressed: () {},
            color: kPrimaryDarkColor,
          ),
        ),
      ),
    );
  }
}
