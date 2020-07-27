import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as Path;

class ProfileAvatar extends StatefulWidget {
  @override
  _ProfileAvatarState createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  @override
  var url = 'https://bit.ly/3eWVEEt';
  File _profileImage;
  String _uploadedFileURL;

  //function for image uploading
  Future uploadFile() async {
    StorageReference storageReference = FirebaseStorage.instance
        .ref()
        .child('profiles/${Path.basename(_profileImage.path)}}');
    StorageUploadTask uploadTask = storageReference.putFile(_profileImage);
    await uploadTask.onComplete;
    print('File Uploaded');
    storageReference.getDownloadURL().then((fileURL) {
      setState(() {
        _uploadedFileURL = fileURL;
      });
    });
  }

  selectImage() async {
    var imgy = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _profileImage = imgy;
      if(_profileImage!=null)
        uploadFile();//TODO: _profileImage should be uploaded Firebase.
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
