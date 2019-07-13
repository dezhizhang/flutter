import 'package:flutter/material.dart';

class TabProduct extends StatefulWidget {
  TabProduct({Key key}) : super(key: key);

  _TabProductState createState() => _TabProductState();
}

class _TabProductState extends State<TabProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('商品'),
    );
  }
}