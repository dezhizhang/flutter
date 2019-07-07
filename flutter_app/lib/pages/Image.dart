import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePage extends StatefulWidget {
  ImagePage({Key key}) : super(key: key);

  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  File image;
  choosePhoto() async{
      var image = await ImagePicker.pickImage(source: ImageSource.gallery,maxHeight: 400);
      setState(() {
        this.image = image;
      });

  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('选择图片'),
         ),
         body: Container(
           child: Column(
             children: <Widget>[
                RaisedButton(
                  child: Text('请选择图片'),
                  color: Colors.pink,
                  textColor: Colors.white,
                  onPressed: choosePhoto
                ),
                Center(
                  child: this.image == null ? Text('请选择图片'):Image.file(this.image),
                )
             ],
           ),
         )
       )
    );
  }
}