import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget{
  String title;
  SearchPage({this.title='表单'});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
    );
  }
  
}