import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('卡片组件'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('标题',style: TextStyle(fontSize: 28)),
                  subtitle: Text('副标题'),
                ),
                ListTile(
                  title: Text('张三',style: TextStyle(fontSize: 28)),
                  subtitle: Text('副标题'),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}