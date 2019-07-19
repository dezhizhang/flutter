import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  TextPage({Key key}) : super(key: key);

  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单页面'),
      ),
      body: Container(
        child: TextField(
          decoration: InputDecoration(
            hintText: '请输入搜索的内容',
            border: OutlineInputBorder()
          ),
        )
      ),
    );
  }
}