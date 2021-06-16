import 'package:flutter/material.dart';
import 'package:connext/constants.dart';

class SearchBox extends StatefulWidget {
  final String hintText;
  final ValueChanged<String> onChanged;

  const SearchBox({Key key, this.hintText, this.onChanged}) : super(key: key);
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  String searchValue = null;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          suffixIcon: searchValue == null
              ? Icon(Icons.qr_code_scanner_outlined)
              : IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    print(searchValue);
                  },
                  color: Colors.black,
                ),
        ),
      ),
    );
  }
}
