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
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         crossAxisSpacing: 10
//       ),
//       itemCount: listData.length,
//       itemBuilder: (context,index) {
//         return Container(
//           child: Column(
//             children: <Widget>[
//               Image.network('${listData[index]['imageUrl']}'),
//               Text('${listData[index]['title']}')
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://www.itying.com/images/flutter/7.png',fit: BoxFit.cover),
        ),
         Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://www.itying.com/images/flutter/7.png',fit: BoxFit.cover),
        ),
         Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://www.itying.com/images/flutter/7.png',fit: BoxFit.cover),
        ),
         Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://www.itying.com/images/flutter/7.png',fit: BoxFit.cover),
        ),
         Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network('https://www.itying.com/images/flutter/7.png',fit: BoxFit.cover),
        )
      ],
      ),
    );
    
  }
}




   




