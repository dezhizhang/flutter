import 'package:flutter/material.dart';

class TransPage extends StatelessWidget {
  const TransPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('transform'),
      ),
      // body: Container(
      //   width: 750,
      //   height: 100,
      //   color: Colors.yellow,
      //   child: Transform(
      //     alignment: Alignment.topRight,
      //     transform: Matrix4.skewY(0.3),
      //     child: Container(
      //       padding: EdgeInsets.all(8),
      //       color: Colors.orange,
      //       child: Text('广州智数信息科'),
      //     ),
      //   ),
      // ),
      // body:Container(
      //   width: 750,
      //   height: 30,
      //   color: Colors.yellow,
      //   child: Transform.translate(
      //     offset: Offset(20,10),
      //     child: Text('你好广州智数',style: TextStyle(color: Colors.white)),
      //   ),
      // ),
      // body: Container(
      //   width: 750,
      //   height: 100,
      //   color: Colors.pink,
      //   child: Transform.scale(
      //     scale: 1.5,
      //     child: Text('你好',style: TextStyle(color: Colors.white)),
      //   ),
      // ),
      body: Container(
        alignment: Alignment.center,
        transform:Matrix4.rotationZ(0.2),
        margin: EdgeInsets.only(top:50,left:120),
        width: 200,
        height: 150,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.red,Colors.orange],
            center: Alignment.topLeft,
            radius: 0.98
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(2,2),
              blurRadius: 4
            )
          ]
        ),
        child: Text('4314',style: TextStyle(color: Colors.white,fontSize: 40)),
      ),
    );
  }
}