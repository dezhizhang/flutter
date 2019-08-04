import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../utils/ScreenAdaper.dart';
import '../config/Config.dart';


class RegisterOne extends StatefulWidget {
  RegisterOne({Key key}) : super(key: key);

  _RegisterOneState createState() => _RegisterOneState();
}

class _RegisterOneState extends State<RegisterOne> {
  String mobile;
  sendCode() async{
    RegExp reg = new RegExp(r'^[1][3,4,5,7,8][0-9]{9}$');
    if( reg.hasMatch(this.mobile)) {
       var url = '${Config.baseURL}/api/sendCode';
       var response = await Dio().post(url,data:{"tel":this.mobile});
       if(response.data['success']) {
          Navigator.of(context).pushNamed('/registertwo',arguments:{'mobile':this.mobile});
       } else {
        Fluttertoast.showToast(
          msg: "${response.data['message']}",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.pink,
          textColor: Colors.white,
          fontSize: 16.0
        );
       }
    } else {
       Fluttertoast.showToast(
          msg: "您输入的手机号不合法",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.pink,
          textColor: Colors.white,
          fontSize: 16.0
        );
    }
  }
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
                onChanged: (value) {
                  this.mobile = value;
                },
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
                onPressed: this.sendCode,
                // onPressed: () {
                //   Navigator.of(context).pushNamed('/registertwo');
                // },
              ),
            )

          ],
        ),
      )
    );
  }
}