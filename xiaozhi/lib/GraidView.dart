import 'package:flutter/material.dart';
import './data.dart';

class GraidViewPage extends StatefulWidget {
  GraidViewPage({Key key}) : super(key: key);

  _GraidViewPageState createState() => _GraidViewPageState();
}

class _GraidViewPageState extends State<GraidViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网格布局'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10

        ),
        itemCount: listData.length,
        itemBuilder: (context,index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                border: Border.all(width: 1,color: Colors.yellow)
              ),
              child: Text(listData[index]['title']),
            );

        },
      ),
    );
  }
}