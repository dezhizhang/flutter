import 'package:flutter/material.dart';
import './data.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter'),
        ),
      body: HomeContent(),
      ),
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200),
        Text('${this.countNum}'),
        SizedBox(height: 20),
        RaisedButton(
          child: Text('按钮'),
          onPressed: () {
            setState(() {
             this.countNum++; 
            });
          },
        )
      ],
    );
  }
}













   




