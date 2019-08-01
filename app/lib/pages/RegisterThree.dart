import 'package:flutter/material.dart';
import '../utils/ScreenAdaper.dart';

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
                obscureText:true,
                decoration: InputDecoration(
                  hintText: '请输入密码',
                  
                ),
              ),
            ),
            SizedBox(height: 10),
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
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '请再次输入'
                ),
              ),
            ),
            SizedBox(height: 128),
            Container(
              width: double.infinity,
              height: ScreenAdaper.height(68),
              child: RaisedButton(
                child: Text('提交'),
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: () {

                },
              ),
            )
          ],
        ),
      )
    );
  }
}