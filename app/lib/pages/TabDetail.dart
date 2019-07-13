import 'package:flutter/material.dart';

class TabDetail extends StatefulWidget {
  TabDetail({Key key}) : super(key: key);

  _TabDetailState createState() => _TabDetailState();
}

class _TabDetailState extends State<TabDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('商品详情'),
    );
  }
}