import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  final Map arguments;
  InfoPage({Key key,this.arguments}) : super(key: key);

  _InfoPageState createState() => _InfoPageState(arguments:this.arguments);
}

class _InfoPageState extends State<InfoPage> {
   final Map arguments;
  _InfoPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('关部'),
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: '热门'),
              Tab(text:'哈哈'),
              Tab(text: '呢呢')
            ],
          ),

        ),body: TabBarView(
          children: <Widget>[
            Container(
              child: Text('11'),
            ),
            Container(
              child: Text('哈哈'),
            )
          ],
        ),
      ),
    );
  }
}