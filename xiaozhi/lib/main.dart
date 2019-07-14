import 'package:flutter/material.dart';
import './data.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter'),
        ),
      body: HomeContent(),
      ),
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
    );
  }
}


class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.pink,
            child: Text('左边'),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.green,
              child: Text('右边'),
            ),
          )
        ],
      ),
    );
  }
}






   




