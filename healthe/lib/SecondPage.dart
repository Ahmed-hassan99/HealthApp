import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Second extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Second> {
  PickedFile _image;
  final _picker = ImagePicker();

  Future takePic() async {
    final pickedFile = await _picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = PickedFile(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future<void> getImage() async {
    var image = await _picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
              child: Icon(Icons.add_a_photo), onTap: () => takePic()),
          SpeedDialChild(
              child: Icon(Icons.add_photo_alternate), onTap: () => getImage()),
          SpeedDialChild(
              child: Icon(Icons.text_format), onTap: () => print("first")),
        ],
      ),
    );
  }
}
