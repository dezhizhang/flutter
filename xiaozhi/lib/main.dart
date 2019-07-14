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

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 180,
          width: 750,
          color: Colors.yellow,
          child: Text('你好flutter'),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network('https://www.itying.com/images/flutter/7.png',fit: BoxFit.cover),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 90,
                    child: Image.network('https://www.itying.com/images/flutter/6.png',fit: BoxFit.cover),
                  ),
                  Container(
                    height: 90,
                    child: Image.network('https://www.itying.com/images/flutter/5.png',fit: BoxFit.cover),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}







   




