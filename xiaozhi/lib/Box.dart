import 'package:flutter/material.dart';

class BoxPage extends StatelessWidget {
  const BoxPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('尺寸限定'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 300,
          minWidth: double.infinity
        ),
        child:Container(
          height: 5,
          color: Colors.red,
          child: Text('box'),
        ),
      )
    );
  }
}