import 'package:flutter/material.dart';
import '../utils/ScreenAdaper.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

    Widget CartItem() {
    return Container(
      height: ScreenAdaper.height(200),
      width: ScreenAdaper.width(750),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.black12
          )
        )
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: ScreenAdaper.width(60),
            child: Checkbox(
              value: true,
              onChanged: (value) {

              },
              activeColor: Colors.pink,
            ),
          ),
          Container(
            width: ScreenAdaper.width(160),
            child: Image.network('https://www.itying.com/images/flutter/list2.jpg',fit: BoxFit.cover),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,         
              children: <Widget>[
                  Text('哈哈哈你好哈哈哈你好哈哈哈你好哈哈哈你好哈哈哈你好哈哈哈你好哈哈哈你好哈哈哈你好',maxLines: 2,style: TextStyle(color: Colors.black87)),
                  Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('￥42',style: TextStyle(color: Colors.pink)),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.black12
                            )
                          ),
                          width: ScreenAdaper.width(170),
                          child: Row(
                              children: <Widget>[
                                InkWell(
                                    onTap: () {

                                    },
                                    child:Container(
                                    alignment: Alignment.center,
                                    width: ScreenAdaper.width(45),
                                    height: ScreenAdaper.height(45),
                                      child: Text('-'),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: ScreenAdaper.width(70),
                                  height: ScreenAdaper.height(45),
                                  child: Text('1'),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      left: BorderSide(
                                        width: 1,
                                        color: Colors.black12
                                      ),
                                      right: BorderSide(
                                        width: 1,
                                        color: Colors.black12
                                      )
                                    )
                                  ),
                                ),
                                InkWell(
                                    onTap: () {

                                    },
                                    child: Container(
                                    alignment:Alignment.center,
                                    width: ScreenAdaper.width(45),
                                    height: ScreenAdaper.height(45),
                                    child: Text('+'),
                                  ) ,
                                )
                              ],
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    ScreenAdaper.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('购物车'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.launch),
            onPressed: null,
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              CartItem(),
            ],
          ),
          Positioned(
            bottom: 0,
            width: ScreenAdaper.width(750),
            height: ScreenAdaper.height(68),
            child: Container(
              width: ScreenAdaper.width(750),
              height: ScreenAdaper.height(68),
              child: Text('底部'),
              color: Colors.pink,
            ),

          )
        ],
      )
    );
  }
}