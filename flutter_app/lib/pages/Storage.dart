import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StoragePage extends StatefulWidget {
  StoragePage({Key key}) : super(key: key);

  _StoragePageState createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  saveStorage() async{
    SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.setString('userName', '张三');
  }
  getStorage() async{
     SharedPreferences storage = await SharedPreferences.getInstance();
     print(storage.getString('userName'));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('本地存诸'),
         ),
         body: Center(
           child: ListView(
             children: <Widget>[
                RaisedButton(
                  child: Text('保存数据'),
                  color: Colors.pink,
                  textColor: Colors.white,
                  onPressed: saveStorage,
                ),
                RaisedButton(
                  child: Text('获取数据'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: getStorage,
                )
             ],
           ),
         )
       )
    );
  }
}