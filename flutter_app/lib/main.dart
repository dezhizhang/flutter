import 'dart:io';

import 'package:flutter/material.dart';
import './pages/Search.dart';
import './pages/Form.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  final routes =  {
      '/form':(context) => FormPage(),
      '/serch':(context,{arguments}) => SearchPage(arguments:arguments),
  };
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabs(),
      // routes: {
      //   '/form':(context) => FormPage(),
      //   '/serch':(context) => SearchPage(),
      // },
      onGenerateRoute: (RouteSettings settings) {
        final String name = settings.name;
        final Function pageContentBuilder = this.routes[name];
        if(pageContentBuilder !=null) {
          if(settings.arguments !=null) {
            final Route route = MaterialPageRoute(
              builder: (context) => 
              pageContentBuilder(context,arguments:settings.arguments));
              return route;
          } else {
            final Route route = MaterialPageRoute(
              builder: (context) => 
              pageContentBuilder(context));
              return route;
          }
        }
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
               Navigator.pushNamed(context, '/serch',arguments: {'id':123});
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

















