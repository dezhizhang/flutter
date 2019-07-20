import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  TextPage({Key key}) : super(key: key);

  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单页面'),
      ),
      body:  Column(
        children: <Widget>[
          CheckboxListTile(
            value: this.flag,
            title: Text('标题'),
            secondary: Icon(Icons.home),
            onChanged: (value) {
              setState(() {
               this.flag = value; 
              });
            },
          ),
          RaisedButton(
            child: Text('登录'),
            color: Colors.pink,
            textColor: Colors.white,
            onPressed: () {
              print(this.flag);
            },
          )
        ],
      )
    );
  }
}
