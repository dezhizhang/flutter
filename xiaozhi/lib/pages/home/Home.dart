import 'package:flutter/material.dart';
import '../../components/SwiperList.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 0),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 30,
              color: Colors.pink,
            ),
            SizedBox(height:10),
            Container(
              width: double.infinity,
              height: 150,
              // color: Colors.red,
              child: SwiperList(),
            )
          ],
        ),
      )
    );
  }
}