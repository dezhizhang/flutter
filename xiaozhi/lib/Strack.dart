import 'package:flutter/material.dart';

class StrackPage extends StatelessWidget {
  const StrackPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('层叠组件'),
      ),
      // body: Container(
      //   width: 120,
      //   height: 120,
      //   color: Colors.blue[50],
      //   child: Align(
      //     alignment: Alignment.topRight,
      //     child: FlutterLogo(size: 60),
      //   ),
      // ),
      body: Container(
        width: 120,
        height: 120,
        color: Colors.blue[50],
        child: Align(
          alignment: FractionalOffset(0.5, 0.5),
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}