import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioPage extends StatefulWidget {
  DioPage({Key key}) : super(key: key);

  _DioPageState createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  
  getUserInfo() async{
    var response = await Dio().get('https://cnodejs.org/api/v1/topics');
    var data = response.data;
    print(data);
    
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getUserInfo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dio'),
      ),
      body: Text('dio'),
    );
  }
}