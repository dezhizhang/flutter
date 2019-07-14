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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconContainer(Icons.home,color: Colors.yellow),
        IconContainer(Icons.search,color: Colors.green),
        IconContainer(Icons.delete,color: Colors.red),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  double size= 32;
  Color color = Colors.pink;
  IconData icon;
  IconContainer(this.icon,{this.size,this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: this.color,
      child: Center(
        child: Icon(this.icon,size: this.size,color: Colors.white),
      ),
    );
  }
}






   




