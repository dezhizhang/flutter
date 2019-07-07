import 'package:flutter/material.dart';

class PeoplePage extends StatefulWidget {
  PeoplePage({Key key}) : super(key: key);

  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('我的'),
    );
  }
}