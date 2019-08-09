import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  EventPage({Key key}) : super(key: key);

  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
   double _top = 0.0;
   double _left = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('事件'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: this._top,
            left: this._left,
            child: GestureDetector(
              child: CircleAvatar(child: Text('A')),
              onPanDown: (DragDownDetails e) {
                print('用户手指按下：${e.globalPosition}');
              },
              onPanUpdate: (DragUpdateDetails e) {
              //用户手指滑动时，更新偏移，重新构建
              setState(() {
                _left += e.delta.dx;
                _top += e.delta.dy;
              });
             },
             onPanEnd: (DragEndDetails  e) {
               print(e.velocity);
             },
            ),
          )
        ],
      ),
     
    );
  }
}