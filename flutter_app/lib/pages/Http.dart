import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class HttpPage extends StatefulWidget {
  HttpPage({Key key}) : super(key: key);

  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  List list = [];
  void initState() {
    super.initState();
    this.getData();
  }

  getData() async{
    var result = await http.get('https://cnodejs.org/api/v1/topics');
    if(result.statusCode == 200) {
      print(result.body);
      var data = json.decode(result.body)['data'];
      setState((){
        this.list = data;
      });
    } else {
      print('失败${result.statusCode}');
    }

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