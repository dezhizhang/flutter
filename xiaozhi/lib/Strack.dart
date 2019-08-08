import 'package:flutter/material.dart';

class StrackPage extends StatelessWidget {
  const StrackPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('层叠组件'),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 400,
            height: 400,
            color: Colors.pink,
          ),
          Text('我是一个文本',style: TextStyle(color: Colors.white))
        ],
      )
    );
  }
}