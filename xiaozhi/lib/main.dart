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


// class HomeContent extends StatelessWidget {
//   const HomeContent({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         ListTile(
//           leading: Icon(Icons.home,color: Colors.yellow),
//           title: Text('哈哈哈呢呢呢呢呀呀呀呀'),
//           subtitle: Text('我的天呀我的地呀'),
//         )
//       ],
//     );
//   }
// }


class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            height: 180,
            color: Colors.red,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.pink,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.green,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.orange,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.blue,
          )

        ],
      )
    );
  }
}
   




