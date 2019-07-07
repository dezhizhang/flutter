import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class NewsPage extends StatefulWidget {
  NewsPage({Key key}) : super(key: key);

  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int page = 0;
  bool flag = true;
  List list = [];
  ScrollController _scrollController = new ScrollController();
  void initState() {
    super.initState();
    this.getData();
    _scrollController.addListener(() {
        var pixels = _scrollController.position.pixels;
        var maxScrollExtent =   _scrollController.position.maxScrollExtent;
        if(pixels >= maxScrollExtent-40) {
          getData();
        }
    });
  }

  getData() async{
    if(this.flag) {
        var response = await http.get('https://cnodejs.org/api/v1/topics?page=${this.page}');
        if(response.statusCode == 200) {
          var data = json.decode(response.body)['data'];
          setState(() {
          this.list.addAll(data);
          this.page++;
          });
        }
    }
   
  }
  Future<void> refresh() async{
     await Future.delayed(Duration(milliseconds:2000),(){
       print('重新加载数据');
       getData();
     });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text('新闻列表'),
          ),
          body: this.list.length > 0 ? RefreshIndicator(
            onRefresh: this.refresh,
            child: ListView.builder(
              controller: _scrollController,
              itemCount: this.list.length,
              itemBuilder: (context,index) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('${this.list[index]['author_id']}',maxLines: 1,),
                      onTap: () {
                        Navigator.of(context).pushNamed('/newsdetail',arguments: {'aid':'123'});
                      },
                    ),
                    Divider()
                  ],
                );
              },
            ),
          ) : Text('加载更多...'),
        )
    );
  }
}
