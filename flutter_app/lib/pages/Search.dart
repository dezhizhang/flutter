import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget{
  final arguments;
  SearchPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TabBar(
                  isScrollable: true,
                  tabs: <Widget>[
                    Tab(text: '执门'),
                    Tab(text: '首页'),
                    Tab(text: '我的'),
                    Tab(text: '产品'),
                    Tab(text: '家间'),
                    Tab(text: '好的'),
                    Tab(text: '想的'),
                    Tab(text: '看的'),
                    Tab(text: '听的'),
                    Tab(text: '瑰的')
                  ],
                ),
              )
            ],
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: <Widget>[
            ListTile(
              title: Text('我是执门'),
            ),
            ListTile(
              title: Text('我的页面'),
            ),
             ListTile(
              title: Text('我的页面'),
            ),
             ListTile(
              title: Text('我的页面'),
            ),
             ListTile(
              title: Text('我的页面'),
            ),
             ListTile(
              title: Text('我的页面'),
            ),
             ListTile(
              title: Text('我的页面'),
            ),
             ListTile(
              title: Text('我的页面'),
            ),
             ListTile(
              title: Text('我的页面'),
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