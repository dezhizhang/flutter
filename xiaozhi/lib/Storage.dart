import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StroagePage extends StatefulWidget {
  StroagePage({Key key}) : super(key: key);

  _StroagePageState createState() => _StroagePageState();
}

class _StroagePageState extends State<StroagePage> {
  _saveDate() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userName', '哈哈');

  }
  _getData() async{
     SharedPreferences prefs = await SharedPreferences.getInstance();
     var userName = prefs.getString('userName');
     print(userName);
  }
  _removeDate() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('userName');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('本地存储'),
      ),
      body:Column(
        children: <Widget>[
          RaisedButton(
            child: Text('保存数据'),
            color: Colors.pink,
            textColor: Colors.white,
            onPressed: _saveDate,
          ),
          RaisedButton(
            child: Text('获取数据'),
            color: Colors.green,
            textColor: Colors.white,
            onPressed: _getData,
          ),
          RaisedButton(
            child: Text('请除数据'),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: _removeDate,
          )
        ],
      )
    );
  }
}
