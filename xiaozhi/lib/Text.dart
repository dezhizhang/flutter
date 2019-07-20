import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TextPage extends StatefulWidget {
  TextPage({Key key}) : super(key: key);

  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  var userName = new TextEditingController();
  void initState() {
    super.initState();
    this.userName.text = '初始值';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('表单页面'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TextField(
                controller: userName,
                decoration: InputDecoration(
                  icon: Icon(Icons.home),
                  labelStyle: TextStyle(color: Colors.yellow),
                  hintText: '请输入',
                  border: OutlineInputBorder()
                ),
                onChanged: (value) {
                  setState(() {
                   this.userName.text = value; 
                  });
                },
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 10,right: 10),
                child: RaisedButton(
                  child: Text('登录'),
                  color: Colors.pink,
                  textColor: Colors.white,
                  onPressed: () {
                    print(this.userName.text);
                  },
                ),
              )
            ],
          ),
        ),
    );
  }
}

