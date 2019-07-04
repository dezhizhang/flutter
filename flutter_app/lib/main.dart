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
          title: Text('我是一个表单')
        ),
        body: HomePate(),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: UserAccountsDrawerHeader(
                      accountName: Text('张德志'),
                      accountEmail: Text('1541609448@qq.com'),
                      currentAccountPicture: Icon(Icons.home)
                    )
                  )
                ],
              )
            ],
          )
          
        ),
        endDrawer: Drawer(
          child: Text('我是右边'),
        ),
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
              child: Text('普通按钮'),
              color: Colors.pink,
              textColor: Colors.white,
              elevation: 20,
              onPressed: () {
                print('我是普通按钮');
              },
            ),
            RaisedButton(
              child: Text('我是阴影的按钮'),
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 20,
              onPressed: () {

              },
            ),
            RaisedButton.icon(
              icon: Icon(Icons.search),
              label: Text('图标按钮'),
              color: Colors.cyan,
              textColor: Colors.white,
              onPressed: () {
                print('图标按钮');
              },
            ),
            RaisedButton(
              child: Text('圆角按钮'),
              color: Colors.pink,
              textColor: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              ),
              onPressed: () {
                print('圆角按钮');
              },
            ),
            FlatButton(
              child: Text('我是按钮'),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {

              },
            ),
            OutlineButton(
              child: Text('按钮'),
              color: Colors.pink,
              textColor: Colors.yellow,
              onPressed: () {

              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {

              },
            ),
            

         ],
       )
    );
  }
}

















