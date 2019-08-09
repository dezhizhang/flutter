import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './provider/Counter.dart';

class TextPage extends StatefulWidget {
  TextPage({Key key}) : super(key: key);

  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    var count =  Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('表单页面'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text('${count.count}'),
            RaisedButton(
              child: Text('增加'),
              onPressed: (){
                count.increment();
              },
            )
          ],
        ),
        // child: Text('${count.count}')
      )
    );
  }
}
