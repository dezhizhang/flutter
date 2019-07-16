import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './routes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      // initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
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
      drawer: Drawer(
        child: Text('左边'),
      ),
      body:HomePage(),
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

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跨转到搜索页面'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/search',arguments: {'id':'123'});
          },
        ),
        RaisedButton(
          child: Text('跳转到info'),
          color: Colors.yellow,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/info',arguments:{'pid':'456'});
          },
        ),
        RaisedButton(
          child: Text('跳到自定义导航'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/change');
          },
        )
      ],
    );
  }
}













   




