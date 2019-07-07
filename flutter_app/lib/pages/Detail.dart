import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;
import 'dart:convert';


class NewsDetail extends StatefulWidget {
  Map arguments;
  NewsDetail({Key key,this.arguments}) : super(key: key);

  _NewsDetailState createState() => _NewsDetailState(this.arguments);
}

class _NewsDetailState extends State<NewsDetail> {
  List list = [];
  Map arguments;
  _NewsDetailState(this.arguments);
  void initState() {
    super.initState();
    this.getData();
  }
  getData() async{
     var response = await http.get('https://cnodejs.org/api/v1/topics?id=${this.arguments['id']}');
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
            title: Text('新闻详情'),
          ),
          body: Column(
            children: <Widget>[
              Text('${this.list.length > 0 ? this.list[0]['author_id']:''}'),
              Text('${this.list.length > 0 ? this.list[0]['content']:''}'),
            ],
          )
        )
    );
  }
}