import 'dart:io';
import 'package:connext/components/roundbutton.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

void main(List<String> args) {
  runApp(MyPage());
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  /// Variables
  File imageFile;

  /// Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFF307777),
          title: Text("Image Cropper"),
        ),
        body: Container(
            child: imageFile == null
                ? Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundButton(
                          color: Color(0XFF307777),
                          press: () {
                            _getFromGallery();
                          },
                          text: ("PICK FROM GALLERY"),
                        ),
                      ],
                    ),
                  )
                : Container(
                    child: Image.file(
                      imageFile,
                      fit: BoxFit.cover,
                    ),
                  )));
  }

  /// Get from gallery
  _getFromGallery() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    _cropImage(pickedFile.path);
  }

  /// Crop Image
  _cropImage(filePath) async {
    File croppedImage = await ImageCropper.cropImage(
      sourcePath: filePath,
      maxWidth: 1080,
      maxHeight: 1080,
    );
    if (croppedImage != null) {
      imageFile = croppedImage;
      setState(() {});
    }
  }
}
