import 'package:flutter/material.dart';

class FlexPage extends StatelessWidget {
  const FlexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flex布局'),
      ),
     
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