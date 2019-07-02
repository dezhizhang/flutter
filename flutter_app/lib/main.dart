import 'dart:core' as prefix0;

import 'package:flutter/material.dart';

void main() => runApp(MyApp());


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

// class HomeContent extends StatelessWidget{
 
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child:Stack(
//       alignment: Alignment.center,
//       children: <Widget>[
//         Container(
//           width: 400,
//           height: 400,
//           color: Colors.red,
//           child: Stack(
//             children: <Widget>[
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Icon(Icons.home,size: 40,color: Colors.white),
//               ),
//               Align(
//                 alignment: Alignment.center,
//                   child: Icon(Icons.search,size: 40,color: Colors.yellow),
//               )
//             ],
//           ),
//         ),
//       ],
//     ) ,
//     );
//   } 
// }

// class HomeContent extends StatelessWidget{
 
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         width: 400,
//         height: 300,
//         color: Colors.red,
//         child: Stack(
//           children: <Widget>[
//             Positioned(
//               left:60,
//               child: Icon(Icons.home,size: 40,color:Colors.yellow),
//             )
//           ],
//         ),
//       ),
//     );
//   }
  
// }

class HomeContent extends StatelessWidget{
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 400,
        height: 200,
        color: Colors.red,
        child: AspectRatio(
          aspectRatio: 0.2,
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
  
}






