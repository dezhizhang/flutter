import 'package:flutter/material.dart';
import 'dart:convert';

class GetPage extends StatefulWidget {
  GetPage({Key key}) : super(key: key);

  _GetPageState createState() => _GetPageState();
}

class _GetPageState extends State<GetPage> {
  void initState() {
    super.initState();
    Map userInfo = {
      'userName':'张三',
      'age':20
    };

    print(json.encode(userInfo));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('get请求'),
         ),
         body: Text('我是请求数据'),
       ),
    );
  }
}