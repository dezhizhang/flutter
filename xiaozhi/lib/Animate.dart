import 'package:flutter/material.dart';
import './components/MyButton.dart';

class AnimatePage extends StatefulWidget {
  AnimatePage({Key key}) : super(key: key);

  _AnimatePageState createState() => _AnimatePageState();
}

class _AnimatePageState extends State<AnimatePage> {
  @override
  onTap() {
    print('111');

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动画'),
      ),
      body: Column(
        children: <Widget>[
          GradientButton(
            colors: [Colors.orange, Colors.red],
            height: 50,
            child: Text('Submit'),
            onPressed: this.onTap,
          ),
          GradientButton(
            colors: [Colors.lightGreen, Colors.green[700]],
            height: 50,
            child: Text('Submit'),
            onPressed: this.onTap,
          ),
          GradientButton(
            height: 50,
            colors: [Colors.lightBlue[300], Colors.blueAccent],
            child: Text('Submit'),
            onPressed: this.onTap,
          )
        ],
      )
    );
  }
}