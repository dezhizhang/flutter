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

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          'flutterflutterflutterflutterflutter',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textScaleFactor: 2,
          style: TextStyle(
            fontSize: 16,
            color: Colors.pink,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5
          ),
        )
    );
  }
}