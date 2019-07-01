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
//   @override 
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         // child: Image.network('https://www.bdidu.com/images/201905/thumb_img/1101_thumb_G_1557845381862.jpg'),
//         height: 300,
//         width: 300,
//         decoration: BoxDecoration(
//           color: Colors.yellow,
//           borderRadius: BorderRadius.circular(150),
//           image: DecorationImage(
//             image: NetworkImage('https://www.baidu.com/images/201905/thumb_img/1101_thumb_G_1557845381862.jpg'),
//             fit: BoxFit.cover
//           )
//         ),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         child: ClipOval(
//           child: Image.network('https://www.itying.com/images/201905/thumb_img/1101_thumb_G_1557845381862.jpg'),
//         ),
//       ),
//     );
//   }
  
// }

// class HomeContent extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         width: 300,
//         height: 300,
//         child: Image.asset('images/2.jpeg'),
//       ),
//     );
//   }
  
// }


