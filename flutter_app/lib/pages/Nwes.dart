import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class NewsPage extends StatefulWidget {
  NewsPage({Key key}) : super(key: key);

  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List list = [];
  void initState() {
    super.initState();
    this.getData();
  }
  getData() async{
    var response = await http.get('https://cnodejs.org/api/v1/topics');
    if(response.statusCode == 200) {
      var data = json.decode(response.body)['data'];
      setState(() {
       this.list = data;  
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text('新闻列表'),
          ),
          body: this.list.length > 0 ? ListView(
            children: this.list.map((value) {
              return ListTile(
                 title: Text(value['author_id']),
              );
            }).toList()
          ):Text('加载更多'),
        )
    );
  }
}
