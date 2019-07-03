import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget{
  final arguments;
  SearchPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('我是搜索页'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.search),
          onPressed: (){
            print('1');
          },
        )
      ),
      body: Text("搜索页面区域")
    );
  }
  
}