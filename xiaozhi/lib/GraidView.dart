import 'package:flutter/material.dart';

class GraidViewPage extends StatefulWidget {
  GraidViewPage({Key key}) : super(key: key);

  _GraidViewPageState createState() => _GraidViewPageState();
}

class _GraidViewPageState extends State<GraidViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网格布局'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
            Text('这是一个文本'),
            Text('这是一个文本'),
            Text('这是一个文本'),
            Text('这是一个文本'),
            Text('这是一个文本'),
            Text('这是一个文本'),
            Text('这是一个文本'),
        ],
      )
    );
  }
}