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
            padding: EdgeInsets.only(left: 10,right: 10),
            width: double.infinity,
            height: ScreenAdaper.height(68),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.pink
                )
              )
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: '请输入用户名',
              ),
              onChanged: (value) {

              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            width: double.infinity,
            height: ScreenAdaper.height(68),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Colors.pink
                )
              )
            ),
            child: TextField(
              obscureText:true,
              decoration: InputDecoration(
                hintText: '请输入密码',
                
              ),
              onChanged: (value) {

              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('忘记密码'),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('新用户注册'),

                )
              ],
            ),
          ),
          SizedBox(height: 128),
          Container(
            height: ScreenAdaper.height(68),
            padding: EdgeInsets.only(left: 10,right: 10),
            child: RaisedButton(
              
              child: Text('登录'),
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: () {

              },
            ),
          )

        ],
      )
    );
  }
}