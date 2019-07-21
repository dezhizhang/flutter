
import 'package:flutter/material.dart';
import '../utils/ScreenAdaper.dart';

class TabProduct extends StatefulWidget {
  TabProduct({Key key}) : super(key: key);

  _TabProductState createState() => _TabProductState();
}

class _TabProductState extends State<TabProduct> {
  showModalSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return GestureDetector(
          onTap: () {
            return false;
          },
          child:Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Wrap(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top:25,left: 10),
                        child: Text('颜色:',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink)),
                      ),
                      
                      Wrap(
                        children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Chip(
                                label: Text('白色',style: TextStyle(color: Colors.white)),  
                                padding: EdgeInsets.all(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Chip(
                                label: Text('粉色',style: TextStyle(color: Colors.white)),
                                backgroundColor: Colors.pink,
                                padding: EdgeInsets.all(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Chip(
                                label: Text('蓝色',style: TextStyle(color: Colors.white)),
                                backgroundColor: Colors.blue,
                                padding: EdgeInsets.all(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Chip(
                                label: Text('绿色',style: TextStyle(color: Colors.white)),
                                backgroundColor: Colors.green,
                                padding: EdgeInsets.all(10),
                              ),
                            ),
                             Container(
                              margin: EdgeInsets.all(10),
                              child: Chip(
                                label: Text('黄色',style: TextStyle(color: Colors.white)),
                                backgroundColor: Colors.yellow,
                                padding: EdgeInsets.all(10),
                              ),
                            ),
                             Container(
                              margin: EdgeInsets.all(10),
                              child: Chip(
                                label: Text('紫色',style: TextStyle(color: Colors.white)),
                                backgroundColor: Colors.purple,
                                padding: EdgeInsets.all(10),
                              ),
                            ),
                             Container(
                              margin: EdgeInsets.all(10),
                              child: Chip(
                                label: Text('青色',style: TextStyle(color: Colors.white)),
                                backgroundColor: Colors.cyan,
                                padding: EdgeInsets.all(10),
                              ),
                            )
                        ],
                      )
                    ],
                  ),
                   Wrap(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top:25,left: 10),
                        child: Text('颜色:',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.pink
                        )),
                      ),
                      Wrap(
                        children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Chip(
                                label: Text('SX',style: TextStyle(color: Colors.white)),
                                padding: EdgeInsets.all(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Chip(
                                label: Text('SM',style:TextStyle(color: Colors.white)),
                                backgroundColor: Colors.pink,
                                padding: EdgeInsets.all(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Chip(
                                label: Text('LS',style: TextStyle(color: Colors.white)),
                                backgroundColor: Colors.blue,
                                padding: EdgeInsets.all(10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Chip(
                                label: Text('LX',style: TextStyle(color: Colors.white)),
                                backgroundColor: Colors.green,
                                padding: EdgeInsets.all(10),
                              ),
                            )
                        ],
                      )
                    ],
                  ),
                  
                ],
              ),
              // Divider(color: Colors.pink),
              Positioned(
                bottom: 0,
                width: ScreenAdaper.width(750),
                height: ScreenAdaper.height(80),
                child: Row(
                  children: <Widget>[
                     Expanded(
                        flex: 1,
                      
                        child: Container(
                          height: ScreenAdaper.height(80),
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: RaisedButton(
                           child: Text('加入购物车',style: TextStyle(color: Colors.white)),
                           color: Colors.pink,
                           textColor: Colors.white,
                           onPressed: () {

                           },
                         ),
                       ),
                     ),
                     Expanded(
                       flex: 1,
                       child: Container(
                          height: ScreenAdaper.height(80),
                          margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                            ),
                          child: RaisedButton(
                            child: Text('立即购买',style: TextStyle(color: Colors.white)),
                            color: Colors.red,
                            textColor: Colors.white,
                            onPressed: () {

                            },
                          ),
                       ),
                     )
                  ],
                ),
              )
            ],
          )
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        padding:  EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16/9,
              child: Image.network('https://www.itying.com/images/flutter/p1.jpg',fit: BoxFit.cover),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text('哈哈哈俣哈哈',style: TextStyle(
                color: Colors.black87,
                fontSize: ScreenAdaper.fontSize(34)
              ),),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Text('详情详情详情',style: TextStyle(
                color: Colors.black54,
                fontSize: ScreenAdaper.fontSize(28)
              )),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Text('原价： ',style: TextStyle(
                          color: Colors.black54,
                          fontSize: ScreenAdaper.fontSize(30)
                        )),
                        Text('￥23',style: TextStyle(
                          color: Colors.black45,
                          fontSize: ScreenAdaper.fontSize(34),
                          decoration: TextDecoration.lineThrough
                        ))
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('特价： ',style: TextStyle(
                          color: Colors.black54,
                          fontSize: ScreenAdaper.fontSize(30)
                        )),
                        Text('￥20',style: TextStyle(
                          color: Colors.pink,
                          fontSize: ScreenAdaper.fontSize(34)
                        ))
                      ],
                    ),
                  ),
                 
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: ScreenAdaper.height(60),
              child: InkWell(
                onTap: () {
                  this.showModalSheet();
                },
                child: Row(
                children: <Widget>[
                    Text('已选：',style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('15黑色,XL,1件')
                  ],
                ),
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: ScreenAdaper.height(60),
              child: Row(
                children: <Widget>[
                    Text('运费：',style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('免运费')
                  ],
                ),
            ),
            Divider(),
          ],
        )
    );
  }
}