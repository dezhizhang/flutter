import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; 
import './routes.dart';
import './provider/Counter.dart';
import './provider/Card.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(builder: (_) => Counter()),
        ChangeNotifierProvider(builder: (_) => Cart())
      ],
      child: MaterialApp(
      localizationsDelegates: [
          //此处
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          //此处
          const Locale('zh', 'CH'),
          const Locale('en', 'US'),
        ],
        home: Tabs(),
        // initialRoute: '/',
        onGenerateRoute: onGenerateRoute,
        theme: ThemeData(
          primaryColor: Colors.pink
        ),
        )
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
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('login'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/login');
          },
        ),
        RaisedButton(
          child: Text('form'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/form');
          },
        ),
        RaisedButton(
          child: Text('process'),
          color: Colors.green,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/process');
          },
        ),
        RaisedButton(
          child: Text('point'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/point');
          },
        )
      ],
    );
  }
}
 












   




