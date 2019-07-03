import 'dart:core' as prefix0;

import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是一个App'),
        ),
        body: HomePate(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('搜索')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.send),
              title: Text('产品')
            )
          ],
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class HomePate extends StatefulWidget {
  HomePate({Key key}) : super(key: key);

  _HomePateState createState() => _HomePateState();
}

class _HomePateState extends State<HomePate> {
  var countNum = 0;
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           SizedBox(height: 200),
           Chip(
             label: Text('${this.countNum}'),
           ),
           RaisedButton(
             child: Text('按钮'),
             onPressed: () {
               setState(() {
                 this.countNum++; 
               });
             },
           )
         ],
       )
    );
  }
}

















