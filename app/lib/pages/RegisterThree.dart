import 'package:flutter/material.dart';

class RegisterThree extends StatefulWidget {
  RegisterThree({Key key}) : super(key: key);

  _RegisterThreeState createState() => _RegisterThreeState();
}

class _RegisterThreeState extends State<RegisterThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册第三步'),
      ),
      body: Text('新用户注册'),
    );
  }
}