import 'package:flutter/material.dart';


class SearchPage extends StatelessWidget {
  final arguments;
  SearchPage({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由'),
      ),
      body: Text('${arguments['id']}'),
    );
  }
}