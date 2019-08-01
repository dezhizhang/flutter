import 'dart:io';

import 'package:flutter/material.dart';
import '../utils/ScreenAdaper.dart';

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
      body: Container(
        padding: EdgeInsets.only(left: 10,right: 10,top: 30),
        child: ListView(
          children: <Widget>[
            Container(
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
                  hintText: '请输入手机号'
                ),
              ),
            ),
            SizedBox(height: 100),
            Container(
              width: double.infinity,
              height: ScreenAdaper.height(68),
              child: RaisedButton(
                child: Text('下一步'),
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushNamed('/registertwo');
                },
              ),
            )

          ],
        ),
      )
    );
  }
}