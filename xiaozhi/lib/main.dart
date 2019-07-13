import 'package:flutter/material.dart';

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
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          color: Colors.pink,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(150),
        image: DecorationImage(
          image: NetworkImage('http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}



