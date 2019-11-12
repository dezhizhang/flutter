import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  ProductList({Key key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      spacing: 10,
      children: <Widget>[
        ListItem(),
        ListItem(),

      ],

    );
  }
}

class ListItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 220,
      child: Column(
        children: <Widget>[
          Container(
            height: 156,
            color: Colors.white,
            child: Image.network('https://www.itying.com/images/flutter/7.png',fit:BoxFit.cover),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('2019潮流韩版蝙蝠衫',maxLines: 1,style: TextStyle(
                    color: Color.fromRGBO(51,51,51,1),
                    fontSize: 12
                  )),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('100')
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('120'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  
}