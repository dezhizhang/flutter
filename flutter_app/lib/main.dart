import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        '你好刘德华',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.white
        ),
      )
    );
  }

}


