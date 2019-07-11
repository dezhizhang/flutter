import 'package:flutter/material.dart';
import '../utils/ScreenAdaper.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    ScreenAdaper.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: TextField(
            autofocus: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30)
              )
            ),
          ),
          height: ScreenAdaper.height(68),
          decoration: BoxDecoration(
            color: Color.fromRGBO(233, 233, 233, 0.8),
            borderRadius: BorderRadius.circular(30)
          ),
        ),
        actions: <Widget>[
          Container(
            height:ScreenAdaper.height(68),
            width: ScreenAdaper.width(80),
            child: Row(
              children: <Widget>[
                Text('搜索',style: TextStyle(
                  fontSize: ScreenAdaper.fontSize(32)
                ),)
              ],
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              child: Text('热搜',style: Theme.of(context).textTheme.title),
            ),
            Divider(),
            Wrap(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 233, 233, 0.9),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('女装'),
                ),
                 Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 233, 233, 0.9),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('男装'),
                ),
                 Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 233, 233, 0.9),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('童装'),
                ),
                 Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(233, 233, 233, 0.9),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('衣服'),
                )
              ],
            ),
            Divider(),
            Container(
              child: Text('历史记录',style: Theme.of(context).textTheme.title),
            ),
            Divider(),
            Column(
              children: <Widget>[
                ListTile(
                  title: Text('鞋子'),
                ),
                Divider(),
                ListTile(
                  title: Text('鞋子'),
                ),
                Divider(),
                ListTile(
                  title: Text('鞋子'),
                ),
                Divider(),
                ListTile(
                  title: Text('鞋子'),
                ),
                Divider(),
                ListTile(
                  title: Text('鞋子'),
                ),
                Divider(),
                ListTile(
                  title: Text('鞋子'),
                ),
                Divider()
              ],
            ),
            SizedBox(height: 100),
            InkWell(
              onTap: (){

              },
              child:Container(
              width: ScreenAdaper.width(500),
              height: ScreenAdaper.height(64),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(233, 233, 233, 1),
                  width: 1
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.delete),
                  Text('清空历史记录')
                ],
              ),
            )
            )
            
          ],
        ),
      )
    );
  }
}
