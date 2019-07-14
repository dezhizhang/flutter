import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  final Map arguments;
  InfoPage({Key key,this.arguments}) : super(key: key);

  _InfoPageState createState() => _InfoPageState(arguments:this.arguments);
}

class _InfoPageState extends State<InfoPage> {
   final Map arguments;
  _InfoPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('info页面'),
      ),
      body: Text('${arguments['pid']}'),
    );
  }
}