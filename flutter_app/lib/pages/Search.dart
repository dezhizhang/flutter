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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TabBar(
                  tabs: <Widget>[
                    Tab(text: '执门'),
                    Tab(text: '首页')
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
            )
          ],
        ),
      ),
    );
  }
  
}