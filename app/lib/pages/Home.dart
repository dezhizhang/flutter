import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


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
      height: ScreenUtil.getInstance().setHeight(46),
      padding: EdgeInsets.all(20),
      child: Text(value,style: TextStyle(
        color: Colors.black54
      )),
    );
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return ListView(
      children: <Widget>[
        swiperWidget(),
        titleWidget('猜你喜欢')
      ],
    );
  }
}