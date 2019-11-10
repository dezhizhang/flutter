import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperList extends StatefulWidget {
  SwiperList({Key key}) : super(key: key);

  @override
  _SwiperListState createState() => _SwiperListState();
}

class _SwiperListState extends State<SwiperList> {
  @override
  Widget build(BuildContext context) {
    return new Swiper(
      itemCount: 3,
      itemBuilder: (BuildContext context,int index){
        return new Image.network("http://via.placeholder.com/350x150",fit: BoxFit.fill,);
      },
      pagination: new SwiperPagination(),
      autoplay:true,
      // control: new SwiperControl(),
    );
  }
}