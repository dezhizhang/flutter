import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  ImagePage({Key key}) : super(key: key);

  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图片组件'),
      ),
      body: Text('图片组件'),
    );
  }
}