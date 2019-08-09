import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/Count.dart';

class TextPage extends StatefulWidget {
  TextPage({Key key}) : super(key: key);

  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    var countProvider =  Provider.of<Count>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('表单页面'),
      ),
      body:Container(
        child: Text('${countProvider.count}'),
      )
    );
  }
}
