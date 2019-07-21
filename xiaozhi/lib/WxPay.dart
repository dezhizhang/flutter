import 'package:flutter/material.dart';

class WxPage extends StatefulWidget {
  WxPage({Key key}) : super(key: key);

  _WxPageState createState() => _WxPageState();
}

class _WxPageState extends State<WxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('微信支付'),
      ),
      body: Text('微信支付'),
    );

  }
}