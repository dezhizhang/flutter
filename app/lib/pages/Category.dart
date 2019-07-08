import 'package:flutter/material.dart';
import '../utils/ScreenAdaper.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 140,
          height: double.infinity,
          color: Colors.pink,
          child: ListView.builder(
            itemCount: 18,
            itemBuilder: (context,index) {
              return Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {

                    },
                    child: Container(
                      child: Text('${index}'),
                      width: double.infinity,
                    ),
                  ),
                  Divider()
                ],
              );
            },
          )
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: double.infinity,
            color: Colors.blue,
            child: Text('右侧'),
          ),
        )
      ],
    );
  }
}