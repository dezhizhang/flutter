
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './pages/Search.dart';
import './pages/Form.dart';
import './pages/Date.dart';
import './pages/Swiper.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  final routes =  {
      '/form':(context) => FormPage(),
      '/serch':(context,{arguments}) => SearchPage(arguments:arguments),
      '/date':(context) => DatePickerPage(),
      '/swiper':(context) => SwiperPage()
  };
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh','CH'),
        const Locale('en','US')
      ],
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
  var countNum = false;
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
            RaisedButton(
              child: Text('普通按钮'),
              color: Colors.pink,
              textColor: Colors.white,
              elevation: 20,
              onPressed: () {
                Navigator.of(context).pushNamed('/form');
              },
            ),
            RaisedButton(
              child: Text('日期组件'),
              color: Colors.blue,
              textColor: Colors.white,
              elevation: 20,
              onPressed: () {
                Navigator.of(context).pushNamed('/date');
              },
            ),
            RaisedButton(
              child: Text('轮播图'),
              color: Colors.pink,
              textColor: Colors.white,
              elevation: 20,
              onPressed: () {
                Navigator.of(context).pushNamed('/swiper');
              },
            ),
         ],
       )
    );
  }
}

















