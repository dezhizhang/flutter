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
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context,index) {
        return ListTile(
          leading: Image.network('${listData[index]['imageUrl']}'),
          title: Text('${listData[index]['title']}'),
          subtitle: Text('${listData[index]['author']}'),
        );
      },
    );
  }
}


   




