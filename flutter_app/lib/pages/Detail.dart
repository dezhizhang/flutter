import 'package:flutter/material.dart';


class NewsDetail extends StatefulWidget {
  Map arguments;
  NewsDetail({Key key,this.arguments}) : super(key: key);

  _NewsDetailState createState() => _NewsDetailState(this.arguments);
}

class _NewsDetailState extends State<NewsDetail> {
  Map arguments;
  _NewsDetailState(this.arguments);
  

  void initState() {
    super.initState();
    print(this.arguments);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text('新闻详情'),
          ),
          body: Text('我是新闻详情'),
        )
    );
  }
}