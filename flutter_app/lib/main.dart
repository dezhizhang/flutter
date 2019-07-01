import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return  MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('我是一个App'),
//         ),
//         body: HomeContent(),
//       ),
//       theme: ThemeData(
//         primarySwatch: Colors.yellow 
//       ),
//     );
//   }

// }

class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是一个App'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      // child: Text(
      //   '张德志你好',
      //   textDirection: TextDirection.ltr,
      // ),
      child: Container(
        child: Text(
          '我是一个文本',
          textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.red
          ),
          ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2.0
          )
        ),
      ),
    );
  }
}


