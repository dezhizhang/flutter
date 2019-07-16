import 'package:flutter/material.dart';

class ChaangePage extends StatelessWidget {
  const ChaangePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: Text('你好'),
          // backgroundColor: Colors.yellow,
          bottom: TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(text: '热销'),
              Tab(text: '推销'),
              Tab(text: '热销'),
              Tab(text: '推销'),
              Tab(text: '热销'),
              Tab(text: '推销'),
              Tab(text: '热销'),
              Tab(text: '推销'),
              Tab(text: '热销'),
              Tab(text: '推销'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Text('你了'),
            ),
            Container(
              child: Text('哈哈'),
            )
          ],
        )
      ),
    );

  }
}