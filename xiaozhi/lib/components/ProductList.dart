import 'package:flutter/material.dart';
import '../utils/Utils.dart';

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
  double width;
  @override
  Widget build(BuildContext context) {
    Utils.init(context);
    width = (Utils.getScreenWidth() - 40) / 2;
    // TODO: implement build
    return Container(
      width: width,
      color: Colors.white,
      child: Column(
        
        children: <Widget>[
          Container(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child:  Image.network('https://www.itying.com/images/flutter/7.png',fit:BoxFit.cover),
            ),
            color: Colors.white,
            // child:
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
                  child: Text('￥100',style: TextStyle(
                    color: Color.fromRGBO(246,58,0,0.6),
                    fontSize: 23
                  ))
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