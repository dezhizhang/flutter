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
    );
  }
}
