import 'package:flutter/material.dart';

class TabEvaluation extends StatefulWidget {
  TabEvaluation({Key key}) : super(key: key);

  _TabEvaluationState createState() => _TabEvaluationState();
}

class _TabEvaluationState extends State<TabEvaluation> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('商品评价'),
    );
  }
}