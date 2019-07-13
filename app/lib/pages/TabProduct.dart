
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Wrap(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 26),
                            child: Text('颜色：',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.pink
                          )),
                          ),
                          Wrap(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    label: Text('粉色',style: TextStyle(color: Colors.white)),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: Colors.pink,
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    label: Text('红色',style: TextStyle(color: Colors.white)),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: Colors.red,
                                ),
                              ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    label: Text('黄色',style: TextStyle(color: Colors.white)),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: Colors.yellow,
                                ),
                              ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    label: Text('绿色',style: TextStyle(color: Colors.white)),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: Colors.green,
                                ),
                              ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    label: Text('紫色',style: TextStyle(color: Colors.white)),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: Colors.purple,
                                ),
                              ),
                              
                            ],
                            
                          )
                        ],
                      ),
                       Wrap(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 26),
                            child: Text('尺寸：',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.pink
                          )),
                          ),
                          Wrap(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    label: Text('XS',style: TextStyle(color: Colors.white)),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: Colors.black54,
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    label: Text('SL',style: TextStyle(color: Colors.white)),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: Colors.black54,
                                ),
                              ),
                               Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    label: Text('SM',style: TextStyle(color: Colors.white)),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: Colors.black54,
                                ),
                              ),
                               Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    label: Text('LS',style: TextStyle(color: Colors.white)),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: Colors.black54,
                                ),
                              ),
                               Container(
                                  margin: EdgeInsets.all(10),
                                  child: Chip(
                                    label: Text('LL',style: TextStyle(color: Colors.white)),
                                    padding: EdgeInsets.all(10),
                                    backgroundColor: Colors.black54,
                                ),
                              ),
                          
                            ],
                          )
                        ],
                      )
                    ],
                  )
                  
                ],
              ),
              Positioned(
                bottom: 0,
                width: ScreenAdaper.width(750),
                height: ScreenAdaper.height(80),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: ScreenAdaper.width(750),
                      height: ScreenAdaper.height(80),
                      child: Text('底部'),
                      color: Colors.pink,
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