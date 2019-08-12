import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body:Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '用户名',
              prefixIcon: Icon(Icons.person)
            ),
            onChanged: (value){
              setState(() {
               this.username = value; 
              });
            },
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              labelText: '密码',
              prefixIcon: Icon(Icons.lock)
            ),
            onChanged: (value) {
              setState(() {
               this.password = value; 
              });
            },
          )
        ],
      )
    );
  }
}