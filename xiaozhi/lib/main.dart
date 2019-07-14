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
    return GridView.count(
      crossAxisCount: 2,
      children:listData.map((value) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.pink,
              width: 2
            )
          ),
          child: Column(
            children: <Widget>[
              Image.network('${value['imageUrl']}'),
              Text('${value['title']}')
            ],
          ),
        );
      }).toList(),
    );
  }
}


   




