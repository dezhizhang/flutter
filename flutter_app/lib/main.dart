import 'package:flutter/material.dart';
import './pages/Search.dart';
import './pages/Form.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      routes: {
        '/form':(context) => FormPage(),
        '/serch':(context) => SearchPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    );
  }
}


class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  var currentIndex = 0;
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
        appBar: AppBar(
          title: Text('我是一个App'),
        ),
        body: HomePate(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.currentIndex,
          onTap: (var index) {
            setState(() {
              this.currentIndex=index;
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
              icon: Icon(Icons.send),
              title: Text('产品')
            )
          ],
        ),
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
             child: Text('搜索'),
             onPressed: () {
               Navigator.pushNamed(context, '/serch');
             },
           ),
           RaisedButton(
             child: Text('表单'),
             onPressed: () {
               Navigator.pushNamed(context, '/form');
             },
           )
         ],
       )
    );
  }
}

















