import 'package:flutter/material.dart';

class ColumPage extends StatelessWidget {
  const ColumPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('colum组件'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('你好中国'),
              Text('你好哈哈')
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('你好中国'),
              Text('你好世界')
            ],
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text('你好中国'),
              Text('你好世界')
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text('你好',style: TextStyle(fontSize: 20,color: Colors.pink)),
              Text('你好世界')
            ],
          )

        ],
      ),
    );
  }
}