
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
          child:Container(
          height: ScreenAdaper.height(400),
          child: Text('底部弹出框'),
        ),
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