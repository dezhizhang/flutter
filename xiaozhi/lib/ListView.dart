import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('列表组件'),
      ),
      body: ListView(
        children: <Widget>[
            ListTile(
              leading: Image.network('http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',width: 100, height: 100),
              title: Text('列表组件'),
              subtitle: Text('详情信息'),

            )
        ],
      )
    );
  }
}