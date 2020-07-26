import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileAvatar extends StatefulWidget {
  @override
  _ProfileAvatarState createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  @override
  var url = 'https://bit.ly/3eWVEEt';
  File _profileImage;
  selectImage() async {
    var imgy = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _profileImage = imgy; //TODO: _profileImage should be uploaded Firebase.
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundImage:
                NetworkImage(url), // TODO: This method should be replace...
            // ...in order to get _profileImage from the Firebase.
            radius: 50,
            backgroundColor: Colors.white,
            child: Container(
              margin: EdgeInsets.only(left: 70, top: 70),
              child: CircleAvatar(
                backgroundColor: Colors.red,
                child: IconButton(
                  icon: Icon(Icons.edit),
                  iconSize: 20,
                  color: Colors.white,
                  padding: EdgeInsets.all(2),
                  onPressed: () {
                    selectImage();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
