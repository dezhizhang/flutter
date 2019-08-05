import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../utils/ScreenAdaper.dart';
import '../config/Config.dart';

class RegisterThree extends StatefulWidget {
  Map arguments;
  RegisterThree({Key key,this.arguments}) : super(key: key);

  _RegisterThreeState createState() => _RegisterThreeState();
}

class _RegisterThreeState extends State<RegisterThree> {
  String mobile;
  String code;
  String password;
  String rpassword;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.mobile = widget.arguments['mobile'];
    this.code = widget.arguments['code'];
  }
  onSubmit() async{
   var api = '${Config.baseURL}/api/register';
   var response = await Dio().post(api,data:{'tel':this.mobile,'code':this.code,'password':this.password});
   if(response.data['success']) {

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
  }

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
                onChanged: (value){
                  setState(() {
                    this.password = value; 
                  });
                },
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
                onChanged: (value) {
                  setState(() {
                   this.rpassword = value; 
                  });
                },
              ),
            ),
            SizedBox(height: 128),
            Container(
              width: double.infinity,
              height: ScreenAdaper.height(68),
              child: RaisedButton(
                child: Text('登录'),
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: this.onSubmit
              ),
            )
          ],
        ),
      )
    );
  }
}