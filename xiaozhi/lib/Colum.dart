import 'package:flutter/material.dart';

class ColumPage extends StatelessWidget {
  const ColumPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('colum组件'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('你好'),
            Text('中国')
          ],
        ),
      ),
    );
  }
}