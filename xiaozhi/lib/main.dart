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
    return Wrap(
      spacing: 10,
      children: <Widget>[
        MyButton('第一季'),
        MyButton('第二季'),
        MyButton('第三季'),
        MyButton('第一季'),
        MyButton('第二季'),
        MyButton('第三季'),
        MyButton('第一季'),
        MyButton('第二季'),
        MyButton('第三季'),
        MyButton('第一季'),
        MyButton('第二季'),
        MyButton('第三季'),

      ],
    );
  }
}



class MyButton extends StatelessWidget {
  final String text;
  const MyButton(this.text,{Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {

      },
    );
  }
}













   




