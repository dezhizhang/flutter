import 'package:flutter/material.dart';
import '../utils/ScreenAdaper.dart';
import './TabProduct.dart';
import './TabDetail.dart';
import './TabEvaluation.dart';


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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
              width: ScreenAdaper.width(400),
              child: TabBar(
                indicatorColor: Colors.pink,
                indicatorSize: TabBarIndicatorSize.label,
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
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {
                showMenu(
                  context: context,
                  items: [
                    PopupMenuItem(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.home),
                          Text('首页')
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.search),
                          Text('搜索')
                        ],
                      ),
                    )
                  ],
                  position: RelativeRect.fromLTRB(ScreenAdaper.width(600), 80, 10, 0)
                );
              },
            ) 
          ],
        ),
        body: Stack(
          children: <Widget>[
             TabBarView(
              children: <Widget>[
                TabProduct(),
                TabDetail(),
                TabEvaluation()
              ],
            ),
            Positioned(
              width: ScreenAdaper.width(750),
              height: ScreenAdaper.height(80),
              bottom: 0,
              child: Container(
                color: Colors.pink,
                child: Text('浮动导航'),
              ),
            )
          ],
        ),
      ),
    );
  }
}