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
              height: ScreenAdaper.height(100),
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.pink,
                      width: 1
                    )
                  ),
                  color: Colors.white
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: ScreenAdaper.height(10)),
                      width: 100,
                      height: ScreenAdaper.height(100),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.shopping_cart),
                          Text('购物车')
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        height: ScreenAdaper.height(80),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text('加入购物车',style: TextStyle(
                            color: Colors.white
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        height: ScreenAdaper.height(80),
                        width:  double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text('立即购买',style: TextStyle(
                            color: Colors.white
                          )),
                        ),
                      ),
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}