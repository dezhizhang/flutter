import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/Counter.dart';
import './provider/Card.dart';

class TransformPage extends StatefulWidget {
  TransformPage({Key key}) : super(key: key);

  _TransformPageState createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  @override
  Widget build(BuildContext context) {
    var count = Provider.of<Counter>(context);
    var cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('transform'),
      ),
      body: Container(
        child:RaisedButton(
          color: Colors.pink,
          textColor: Colors.white,
          child: Text('增加数据'),
          onPressed: () {
            cart.addList('你好呀');
          },
        )
      )
    );
  }
}