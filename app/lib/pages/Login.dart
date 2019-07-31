import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: IconButton(
         icon: Icon(Icons.close),
         onPressed: () {
           Navigator.of(context).pop();
         },
       ),
       actions: <Widget>[
         FlatButton(
           child: Text('客服'),
           onPressed: () {
             
           },
         )
       ],
      ),
      body: Text('登录'),
    );
  }
}