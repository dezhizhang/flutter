import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import '../utils/ScreenAdaper.dart';
import '../model/FocusModel.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List focusData = [];
  void initState() {
    super.initState();
    this.getFocusData();
  }
  getFocusData() async{
     var result  = await Dio().get('http://jd.itying.com/api/focus');
     var focusList = FocusModel.fromJson(result.data);
     setState(() {
      this.focusData = focusList.result; 
     });
  }
  Widget swiperWidget() {
    if(this.focusData.length > 0) {
       return Container(
        child: AspectRatio(
          aspectRatio: 2/1,
          child: Swiper(
            itemBuilder: (BuildContext context,int index) {
              String pic = this.focusData[index].pic;
              return new Image.network('http://jd.itying.com/${pic.replaceAll('\\', '/')}',fit: BoxFit.fill);
            },
            itemCount: this.focusData.length,
            pagination: new SwiperPagination(),
            autoplay: true,
          )
        ),
      );
    } else {
      return Text('加载中...');
    }
  }

  Widget titleWidget(value) {
    return Container(
      height: ScreenAdaper.height(32),
      margin: EdgeInsets.only(left: ScreenAdaper.width(10)),
      padding: EdgeInsets.only(left:ScreenAdaper.width(10)),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: Colors.pink,
            width: ScreenAdaper.width(5)
          )
        )
      ),
      child: Text(value,style: TextStyle(
        color: Colors.black54
      )),
    );
  }
  Widget productListWidget() {
    return Container(
        height: ScreenAdaper.height(200),
        padding: EdgeInsets.all(ScreenAdaper.width(10)),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) {
            return Column(
               children: <Widget>[
                 Container(
                   width: ScreenAdaper.width(140),
                   height: ScreenAdaper.height(140),
                   margin: EdgeInsets.only(right: ScreenAdaper.width(10)),
                   child: Image.network('https://www.itying.com/images/flutter/hot${index+1}.jpg',fit: BoxFit.cover),
                 ),
                 Text('第${index}条')
               ],
            );
          },
          itemCount: 10,
          ),
        );
  }
  Widget hotListWidget () {
    var width = (ScreenAdaper.getScreenWidth() - 30) / 2;
    return Container(
      width: width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black12,
          width: 1
        )
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 1/1,
              child: Image.network('https://www.itying.com/images/flutter/list1.jpg',fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: ScreenAdaper.height(20)),
            child: Text('我们常常需要调用原生Android的代码，因此我们需要通过一种方式来传递调用',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.black54
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: ScreenAdaper.height(20)),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('￥188.00',
                  style: TextStyle(
                    color: Colors.pink
                  )),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text('￥198.00',
                  style: TextStyle(
                    color: Colors.black54,
                    decoration: TextDecoration.lineThrough
                  )),
                )
              ],
            ),
          )
          
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    ScreenAdaper.init(context);
    return ListView(
      children: <Widget>[
        swiperWidget(),
        SizedBox(height: ScreenAdaper.height(20)),
        titleWidget('猜你喜欢'),
        SizedBox(height: ScreenAdaper.height(20)),
        productListWidget(),
        titleWidget('热门推荐'),
        Container(
          padding: EdgeInsets.all(10),
          child: Wrap(
            runSpacing: 10,
            spacing: 10,
            children: <Widget>[
              hotListWidget(),
              hotListWidget(),
              hotListWidget(),
            ],
          ),
        )

      ],
    );
  }
}