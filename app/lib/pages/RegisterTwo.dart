import 'package:flutter/material.dart';

class RegisterTwo extends StatefulWidget {
  RegisterTwo({Key key}) : super(key: key);

  _RegisterTwoState createState() => _RegisterTwoState();
}

class _RegisterTwoState extends State<RegisterTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册第二步'),
      ),
      body: Text('新用户注册'),
    );
  }
}