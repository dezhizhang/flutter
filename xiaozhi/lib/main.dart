import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; 
import './routes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        ),
        RaisedButton(
          child: Text('跳到text'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/text');
          },
        ),
        RaisedButton(
          child: Text('跑转到form'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/form');
          },
        ),
        RaisedButton(
          child: Text('日期组件'),
          color: Colors.green,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/date');
          },
        ),
        RaisedButton(
          child: Text('第三方组件'),
          color: Colors.yellow,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/newdate');
          },
        ),
        RaisedButton(
          child: Text('弹框组件'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/dialog');
          },
        ),
        RaisedButton(
          child: Text('自定义弹框'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/custom');
          },
        ),
        RaisedButton(
          child: Text('获陬设置信息'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/equip');
          },
        ),
        RaisedButton(
          child: Text('打开外部链接'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/luncher');
          },
        ),
        RaisedButton(
          child: Text('支付宝支付'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/applay');
          },
        ),
        RaisedButton(
          child: Text('微信支付'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/wxplay');
          },
        ),
        RaisedButton(
          child: Text('加载外部数据'),
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed('/webview');
          },
        )
      ],
    );
  }
}













   




