import 'dart:core' as prefix0;

import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是一个App'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
 
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 400,
          height: 400,
          color: Colors.red,
        ),
        Text('我是一个文本')

      ],
    ) ,
    );
  } 
}




