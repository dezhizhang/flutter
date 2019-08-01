import 'package:flutter/material.dart';

class RegisterOne extends StatefulWidget {
  RegisterOne({Key key}) : super(key: key);

  _RegisterOneState createState() => _RegisterOneState();
}

class _RegisterOneState extends State<RegisterOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册第一步'),
      ),
      body: Text('新用户注册'),
    );
  }
}