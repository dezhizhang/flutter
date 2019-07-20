import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LancherPage extends StatefulWidget {
  LancherPage({Key key}) : super(key: key);

  _LancherPageState createState() => _LancherPageState();
}

class _LancherPageState extends State<LancherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('打开外部链接'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('打开外部链接'),
                color: Colors.pink,
                textColor: Colors.white,
                onPressed: () async{
                 const url = 'https://baidu.com';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
              RaisedButton(
                child: Text('开打外部应用'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () async{
                  const url = 'tel:15083356190';
                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                
                },
              )
            ],
          ),
        ),
      )
    );
  }
}