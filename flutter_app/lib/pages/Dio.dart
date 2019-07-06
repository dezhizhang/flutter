import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';


class DioPage extends StatefulWidget {
  DioPage({Key key}) : super(key: key);
  _DioPageState createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  List list = [];
  void initState() {
    super.initState();
    this.getData();
  }

  getData() async{
    var dio = new Dio();
    Response  result = await dio.get('https://cnodejs.org/api/v1/topics');
    this.list = json.decode(result.data)['data'];
    print(result);
    // if(result.statusCode == 200) {
     
    //   //  setState(() {
    //   //    this.list = json.decode(result.data)['data'];
    //   //  });
    // }
  
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('http请求数据'),
         ),
         body: this.list.length >0 ? ListView(
           children: this.list.map((value){
             return ListTile(
               title: Text(value['author_id']),
             );
           }).toList(),
         ):Text('加载中....')
       ),
    );
  }
}




