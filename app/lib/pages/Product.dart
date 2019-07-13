import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final arguments;
  ProductPage({Key key,this.arguments}) : super(key: key);

  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('商品'),
              ),
              Tab(
                child: Text('详情'),
              ),
              Tab(
                child: Text('评价'),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text('商口1111'),
            Text('评价'),
            Text('详情')
          ],
        )
      ),
    );
  }
}