import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
    );
  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('底部导航'),
      ),
      body: Text('底部导航'),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.currentIndex,
        onTap: (int index) {
          setState(() {
           this.currentIndex = index; 
          });
        },
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
            icon: Icon(Icons.edit),
            title: Text('编辑')
          ),
         
        ],
      ),
    );
  }
}













   




