import 'package:flutter/material.dart';
import './components/MyDialog.dart';

class CustomPage extends StatefulWidget {
  CustomPage({Key key}) : super(key: key);

  _CustomPageState createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return MyDialog();
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('自定义弹框组件'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('自定义dialog'),
            textColor: Colors.white,
            color: Colors.pink,
            onPressed: _showDialog,
          )
        ],
      )
    );
  }
}