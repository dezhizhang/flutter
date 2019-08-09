import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/Counter.dart';

class TransformPage extends StatefulWidget {
  TransformPage({Key key}) : super(key: key);

  _TransformPageState createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  @override
  Widget build(BuildContext context) {
    var count = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('transform'),
      ),
      body: Container(
        height: 400,
        child:Text('${count.count}') ,
      )
    );
  }
}