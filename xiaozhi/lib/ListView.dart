import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('列表组件'),
      ),
      // body: ListView(
      //   children: <Widget>[
      //       ListTile(
      //         leading: Image.network('http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',width: 100, height: 100),
      //         title: Text('列表组件'),
      //         subtitle: Text('详情信息'),

      //       )
      //   ],
      // )
      body: Container(
        height: 180,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 180,
              height: 180,
              color: Colors.yellow,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.pink,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.green,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.orange,
            )

          ],
        ),
      ),
    );
  }
}