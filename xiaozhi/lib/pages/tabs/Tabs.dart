import 'package:flutter/material.dart';
import '../home/Home.dart';
import '../categroy/Category.dart';
import '../cart/Cart.dart';
import '../user/User.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _listPage = [
    Home(),
    Category(),
    Cart(),
    User(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('商城',textAlign: TextAlign.center),
      ),
      body: _listPage[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('购物车')
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.my_location),
            title: Text('我的')
          ),
        ],
      ),
    );
  }
}