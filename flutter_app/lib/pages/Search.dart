import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget{
  final arguments;
  SearchPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('我是搜索页'),
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: '热门'),
              Tab(text: '我的')
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListTile(
              title: Text('我是执门'),
            ),
            ListTile(
              title: Text('我的页面'),
            )
          ],
        ),
      ),
    );
  }
  
}