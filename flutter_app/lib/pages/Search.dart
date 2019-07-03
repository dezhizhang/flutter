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
      ),
      body: Text("搜索页面区域${arguments !=null ? arguments:'0'}")
    );
  }
  
}