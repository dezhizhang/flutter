import 'package:flutter/material.dart';

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

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
        alignment: Alignment.topLeft,
        fit: BoxFit.fill,
      ),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          color: Colors.red,
          width: 2
        )
      ),
    );
  }
}

