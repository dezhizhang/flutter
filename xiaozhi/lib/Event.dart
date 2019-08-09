import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  EventPage({Key key}) : super(key: key);

  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  String _operation = '';
  void updateText(String text) {
    setState(() {
      this._operation = text; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('事件'),
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            alignment: Alignment.center,
            color: Colors.pink,
            width: 200,
            height: 200,
            child: Text('${this._operation}',style: TextStyle(color: Colors.white)),
          ),
          onTap: () => updateText('Tap'),
          onDoubleTap: () => updateText('DoubleTap'),
          onLongPress: () => updateText('LongPress'),
        ),
      )
    );
  }
}