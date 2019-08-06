import 'package:flutter/material.dart';
import './data.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('列表组件'),
      ),
      
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context,index) {
          return Container(
            // child: Image.network('${listData[index]['imageUrl']}')
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.network('${listData[index]['imageUrl']}'),
                ),
                Container(
                  child: Text('${listData[index]['title']}'),
                )
              ],
            ),
          );
        },
      )
    );
  }
}