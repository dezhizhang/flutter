import 'package:flutter/material.dart';

class ChaangePage extends StatelessWidget {
  const ChaangePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('你好'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: '热销'),
              Tab(text: '推销')
            ],
          ),
        ),
        body: Text('你好')
      ),
    );

  }
}