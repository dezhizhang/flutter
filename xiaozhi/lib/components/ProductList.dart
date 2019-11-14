import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../utils/Utils.dart';
import '../config/Config.dart';
import '../model/ProductModel.dart';



class ProductList extends StatefulWidget {
  ProductList({Key key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  double width;
  List _productList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getProductData();
  }
  getProductData() async {
    var url = Config.baseURL + '/api/product/list';
    var result = await Dio().get(url);
    var productList = ProductModel.fromJson(result.data);
    setState(() {
      this._productList = productList.data;
    });
  
  }
  @override
  Widget build(BuildContext context) {
    Utils.init(context);
    width = (Utils.getScreenWidth() - 40) / 2;
    return Wrap(
      runSpacing: 10,
      spacing: 10,
      children: this._productList.map((value){
        return Container(
          width: width,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child:  Image.network("${Config.baseURL}${value.productUrl}",fit:BoxFit.cover),
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
                      child: Text("${value.description}",maxLines: 1,style: TextStyle(
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
                      child: Text("￥${value.price}",style: TextStyle(
                        color: Color.fromRGBO(246,58,0,0.6),
                        fontSize: 23
                      ))
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }).toList()

    );
  }
}

