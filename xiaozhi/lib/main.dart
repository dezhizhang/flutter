import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './pages/tabs/Tabs.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(115,95,247,1)
      ),
    );
  }
}













   




