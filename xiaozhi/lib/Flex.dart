import 'package:flutter/material.dart';

class FlexPage extends StatelessWidget {
  const FlexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flex布局'),
      ),
      // body: Wrap(
      //   spacing: 8.0,
      //   runSpacing: 4.0,
      //   alignment: WrapAlignment.center,
      //   children: <Widget>[
      //     Chip(
      //       avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('A')),
      //       label: Text('武器'),
      //     ),
      //     Chip(
      //       avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('M')),
      //       label: Text('你好'),
      //     ),
      //     Chip(
      //       avatar: CircleAvatar(backgroundColor: Colors.pink,child: Text('C')),
      //       label: Text('华人'),
      //     ),
      //     Chip(
      //       avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('A')),
      //       label: Text('武器'),
      //     ),
      //     Chip(
      //       avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text('M')),
      //       label: Text('你好'),
      //     ),
      //     Chip(
      //       avatar: CircleAvatar(backgroundColor: Colors.pink,child: Text('C')),
      //       label: Text('华人'),
      //     )
      //   ],
      // )
      body: Flow(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            color: Colors.red,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.green,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.yellow,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.brown,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}