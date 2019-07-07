import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../utils/ScreenAdaper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget swiperWidget() {
    List<Map> imageList = [
      {"url": "https://www.itying.com/images/flutter/slide01.jpg"},
      {"url": "https://www.itying.com/images/flutter/slide02.jpg"},
      {"url": "https://www.itying.com/images/flutter/slide03.jpg"},
    ];
    return Container(
      child: AspectRatio(
        aspectRatio: 2/1,
        child: Swiper(
          itemBuilder: (BuildContext context,int index) {
            return new Image.network(imageList[index]['url'],fit: BoxFit.fill);
          },
          itemCount: imageList.length,
          pagination: new SwiperPagination(),
          autoplay: true,
        )
      ),
    );
  }

  Widget titleWidget(value) {
    return Container(
      height: ScreenAdaper.height(32),
      margin: EdgeInsets.only(left: ScreenAdaper.width(20)),
      padding: EdgeInsets.only(left:ScreenAdaper.width(20)),
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
        SizedBox(height: ScreenAdaper.height(20)),
        titleWidget('热门推荐'),

      ],
    );
  }
}