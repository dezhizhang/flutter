import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:dio/dio.dart';
import '../utils/ScreenAdaper.dart';
import '../model/FocusModel.dart';
import '../model/ProductModel.dart';
import '../config/Config.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List focusData = [];
  List likeData = [];
  List hotData = [];
  void initState() {
    super.initState();
    this.getFocusData();
    this.getLikeData();
    this.getHostData();
  }
  getFocusData() async{
     var result  = await Dio().get('${Config.baseURL}/api/focus');
     var focusList = FocusModel.fromJson(result.data);
     setState(() {
      this.focusData = focusList.result; 
     });
  }

  getLikeData() async{
    var result = await Dio().get('${Config.baseURL}/api/plist?is_hot=1');
    var likeList = ProductModel.fromJson(result.data);
    setState(() {
     this.likeData = likeList.result;
    });
  }

  getHostData() async{
    var result = await Dio().get('${Config.baseURL}/api/plist?is_best=1');
    var hotList = ProductModel.fromJson(result.data);
    setState(() {
     this.hotData = hotList.result;
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
              return new Image.network('${Config.baseURL}/${pic.replaceAll('\\', '/')}',fit: BoxFit.fill);
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
    if(this.likeData.length > 0) {
        return Container(
          height: ScreenAdaper.height(200),
          padding: EdgeInsets.all(ScreenAdaper.width(10)),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index) {
              String sPic = this.likeData[index].sPic;
              return Column(
                children: <Widget>[
                  Container(
                    width: ScreenAdaper.width(140),
                    height: ScreenAdaper.height(140),
                    margin: EdgeInsets.only(right: ScreenAdaper.width(10)),
                    child: Image.network('${Config.baseURL}/${sPic.replaceAll('\\','/')}',fit: BoxFit.cover),
                  ),
                  Text('￥${this.likeData[index].price}',style: TextStyle(
                    color: Colors.pink
                  ))
                ],
              );
            },
            itemCount: this.likeData.length,
            ),
          );
    } else {
      return Text('加载中...');
    }
   
  }
  Widget hotListWidget () {
     var width = (ScreenAdaper.getScreenWidth() - 30) / 2;
     return Container(
          padding: EdgeInsets.all(10),
          child: Wrap(
            runSpacing: 10,
            spacing: 10,
            children: this.hotData.map((value) {
                var sImage = value.sPic;
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
                          child: Image.network('${Config.baseURL}/${sImage.replaceAll('\\','/')}',fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: ScreenAdaper.height(20)),
                        child: Text('${value.title}',
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
                              child: Text('￥${value.price}',
                              style: TextStyle(
                                color: Colors.pink
                              )),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text('￥${value.oldPrice}',
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
            }).toList()
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
        hotListWidget(),
      ],
    );
  }
}