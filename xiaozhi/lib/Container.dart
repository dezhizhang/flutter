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
        child: Text('我是一个容器组件'),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.pink,
          border: Border.all(
            color: Colors.yellow,
            width: 10
          )
        ),
      )
    );
  }
}