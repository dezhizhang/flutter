import 'package:flutter/material.dart';
import '../utils/ScreenAdaper.dart';
import 'dart:async';

class RegisterTwo extends StatefulWidget {
  Map arguments;
  RegisterTwo({Key key,this.arguments}) : super(key: key);

  _RegisterTwoState createState() => _RegisterTwoState();
}

class _RegisterTwoState extends State<RegisterTwo> {
  String mobile;
  bool isShowButton = false;
  int seconds = 10;
  showTimer() {
    Timer timer;
    timer = Timer.periodic(Duration(microseconds: 1000), (timer) {
      setState(() {
       this.seconds--; 
      });
      if(this.seconds == 0) {
        timer.cancel();
        setState(() {
          this.isShowButton = true;
        });
      }
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.mobile = widget.arguments['mobile'];
    this.showTimer();
  }
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
              child: Text('请输入${this.mobile}手机收到的验证码'),
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
                  child: this.isShowButton ? RaisedButton(
                    color: Colors.pink,
                    textColor: Colors.white,
                    child: Text('重新获取验证码'),
                    onPressed: () {

                    },
                  ):RaisedButton(
                    child: Text('${this.seconds}'),
                    color: Colors.pink,
                    textColor: Colors.white,
                    onPressed: null,
                  )
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