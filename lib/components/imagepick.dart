import 'dart:io';

import 'package:connext/components/roundbutton.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MaterialApp(
    home: SampleScreen(),
  ));
}

class SampleScreen extends StatefulWidget {
  @override
  _SampleScreenState createState() {
    return _SampleScreenState();
  }
}

class _SampleScreenState extends State<SampleScreen> {
  File _image;
  final picker = ImagePicker();

  //Future getImage() async {
  // var pickedFile = await picker.pickImage(source: ImageSource.gallery);

  Future getImage() async {
    final image = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (image != null) {
        _image = File(image.path);
        print('_image:$image');
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //RoundButton(press: () => getImage(), text: ('Press me')),
            //Flexible(
            //child: _image != null ? Image.file(_image) : Text('no Image')),
            GestureDetector(
              onTap: getImage,
              child: Container(
                color: Colors.black12,
                child: _image == null
                    ? Icon(Icons.add_a_photo)
                    : Image.file(_image),
                height: 150,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
