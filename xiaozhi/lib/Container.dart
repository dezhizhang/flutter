import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  ContainerPage({Key key}) : super(key: key);

  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('容器组件'),
      ),
      body: Container(
        child: Text('我是一个容器组件',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          color: Colors.red,
          fontWeight: FontWeight.w800,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.lineThrough,

        ),
        ),
        width: 300,
        height: 300,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.pink,
          border: Border.all(
            color: Colors.yellow,
            width: 1
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )
        ),
      )
    );
  }
}