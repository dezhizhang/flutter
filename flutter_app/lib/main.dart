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
    return Wrap(
      spacing: 10,
      children: <Widget>[
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季'),
        MyButton('第一季') 
      ],
    );
  }
}

class MyButton extends StatelessWidget{
  final prefix0.String text;
  const MyButton(this.text,{Key key}) : super(key: key);
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: (){

      },
    );

}


















