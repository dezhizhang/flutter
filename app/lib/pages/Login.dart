import 'package:flutter/material.dart';
import '../utils/ScreenAdaper.dart';

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
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top:30),
              height: ScreenAdaper.height(160),
              width: ScreenAdaper.width(160),
              child: Image.asset('images/login.png',fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: ScreenAdaper.height(68),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.black12
                )
              )
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: '用户名',
              ),
              onChanged: (value) {

              },
            ),
          )
        ],
      )
    );
  }
}