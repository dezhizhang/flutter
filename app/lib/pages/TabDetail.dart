import 'package:flutter/material.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

class TabDetail extends StatefulWidget {
  TabDetail({Key key}) : super(key: key);

  _TabDetailState createState() => _TabDetailState();
}

class _TabDetailState extends State<TabDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[
           Expanded(
             child: InAppWebView(
               initialUrl: 'https://www.zhihu.com/people/zhang-de-zhi-5-90/activities',
             ),
           )
         ],
       )
    );
  }
}