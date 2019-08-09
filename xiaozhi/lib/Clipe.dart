import 'package:flutter/material.dart';

class ClipPage extends StatefulWidget {
  ClipPage({Key key}) : super(key: key);

  _ClipPageState createState() => _ClipPageState();
}

class _ClipPageState extends State<ClipPage> {
  DateTime _lastPressedAt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('退出'),
      ),
      body: WillPopScope(
        onWillPop: () async{
        if(_lastPressedAt == null || DateTime.now().difference(_lastPressedAt) > Duration(seconds:1)) {
            _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        },
        child: Container(
          alignment: Alignment.center,
          child: Text('退出'),
        ),
      ),
    );
  }
}




