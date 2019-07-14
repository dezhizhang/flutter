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

// class HomeContent extends StatelessWidget {
//   const HomeContent({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: listData.length,
//       itemBuilder: (context,index) {
//         return ListTile(
//           leading: Image.network('${listData[index]['imageUrl']}'),
//           title: Text('${listData[index]['title']}'),
//           subtitle: Text('${listData[index]['author']}'),
//         );
//       },
//     );
//   }
// }

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      padding: EdgeInsets.all(10),
      childAspectRatio: 0.7,

      children: <Widget>[
        Container(
          width: 300,
          height: 300,
          color: Colors.pink,
          child: Text('第一个容量'),
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.yellow,
          child: Text('第二个容器'),
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.pink,
          child: Text('第一个容量'),
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.yellow,
          child: Text('第二个容器'),
        )
      ],
    );
  }
}




   




