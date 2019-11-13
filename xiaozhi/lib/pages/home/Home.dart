import 'package:flutter/material.dart';
import '../../components/SwiperList.dart';
import '../../components/ProductList.dart';
import '../../utils/Utils.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Utils.init(context);
    return Container(
      color: Color.fromRGBO(255, 255, 255, 0),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: Utils.height(60),
              color: Colors.pink,
              child: Text('search'),
            ),
            SizedBox(height:10),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow:[
                  BoxShadow(
                    color: Color.fromRGBO(0,142,244,0.6)
                  )
                ]
              ),
              height: Utils.height(300),
              // color: Colors.red,
              child: SwiperList(),
            ),
            SizedBox(height: Utils.height(10)),
            Container(
              width: double.infinity,
              height: Utils.height(83),
              color: Colors.white,
              child: Text('111'),
            ),
            SizedBox(height: 14),
            Container(
              width: double.infinity,
              height: Utils.height(370),
              child: Text('hello'),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
            ),
            SizedBox(height: Utils.height(20)),
            Container(
              width: double.infinity,
              height: Utils.height(70),
              color: Colors.white,
              child: Text('主打产品'),
            ),
            SizedBox(height: Utils.height(20)),
            Container(
              height: Utils.height(437),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromRGBO(230,227,227,1)
              ),
              child:ProductList()
            )
            

          ],
        ),
      )
    );
  }
}