import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProcessPage extends StatefulWidget {
  ProcessPage({Key key}) : super(key: key);

  _ProcessPageState createState() => _ProcessPageState();
}

class _ProcessPageState extends State<ProcessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('process'),
      ),
      // body: LinearProgressIndicator(
      //   backgroundColor: Colors.yellow,
      //   valueColor: AlwaysStoppedAnimation(Colors.white),
      // )
      body: CircularProgressIndicator(
        value: 0.5,
        backgroundColor: Colors.yellow,
        valueColor: AlwaysStoppedAnimation(Colors.pink),
        strokeWidth: 4,
      ),
    );

  }
}