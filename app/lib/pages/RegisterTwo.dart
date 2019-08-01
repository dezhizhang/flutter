import 'package:flutter/material.dart';
import '../utils/ScreenAdaper.dart';

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
      body: Container(
        padding: EdgeInsets.only(left: 10,right: 10,top: 30),
        child: ListView(
          children: <Widget>[
            Container(
              child: Text('请输入15083356190手机收到的验证码'),
            ),
            SizedBox(height: 10),
            Stack(
              children: <Widget>[
                Container(
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
                    hintText: '请输入验证码'
                  ),
                  onChanged: (value) {

                  },
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    child: Text('发送验证码'),
                    onPressed: () {

                    },
                  ),
                )
                
              ],
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
                  Navigator.of(context).pushNamed('/registerthree');
                },
              ),
            )
          ],
        ),
      )
    );
  }
}