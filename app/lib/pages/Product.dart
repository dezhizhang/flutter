import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final arguments;
  ProductPage({Key key,this.arguments}) : super(key: key);

  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Text('商品详情'),
    );
  }
}