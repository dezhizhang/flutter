import 'package:flutter/material.dart';

class ColumPage extends StatelessWidget {
  const ColumPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('colum组件'),
      ),
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisSize: MainAxisSize.max,
             children: <Widget>[
               Container(
                 color: Colors.red,
                 child: Column(
                   mainAxisSize: MainAxisSize.max,
                   children: <Widget>[
                     Text('你好中国')
                   ],
                 ),
               )
             ],

          ),
        ),
      ),
    );
  }
}