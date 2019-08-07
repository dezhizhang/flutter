import 'package:flutter/material.dart';

class StrackPage extends StatelessWidget {
  const StrackPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('层叠组件'),
      ),
      body: Text('组件'),
    );
  }
}