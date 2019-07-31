import 'package:flutter/material.dart';
import '../utils/ScreenAdaper.dart';

class PeoplePage extends StatefulWidget {
  PeoplePage({Key key}) : super(key: key);

  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('我的'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: ScreenAdaper.height(220),
            child: Row(
              children: <Widget>[
                Container(
                  child: ClipOval(
                    child: Image.asset(
                      'images/user.png',
                      fit: BoxFit.cover,
                      width: ScreenAdaper.width(100),
                      height: ScreenAdaper.height(100),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text('登录/注册'),
                )
              ],
            ),

          ),
          ListTile(
            leading: Icon(Icons.home,color: Colors.pink),
            title: Text('全部订单'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.search,color: Colors.green),
            title: Text('待付款'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.search,color: Colors.green),
            title: Text('待收货'),
          ),
          Container(
            width: double.infinity,
            height: 20,
            color: Colors.black12,
          ),
          ListTile(
            leading: Icon(Icons.favorite,color: Colors.lightGreen),
            title: Text('我的收藏'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people,color: Colors.black54),
            title: Text('在线客服'),
          ),
          Divider(),
        ],
      )
    );
  }
}