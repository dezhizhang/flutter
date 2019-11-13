import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../model/FocusModel.dart';

class SwiperList extends StatefulWidget {
  SwiperList({Key key}) : super(key: key);

  @override
  _SwiperListState createState() => _SwiperListState();
}

class _SwiperListState extends State<SwiperList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var str = '{"status": 1,"add_time": 1572174380499,"sort": 1000}';
    var focus = FocusModel.fromJson(json.decode(str));
    print(focus.add_time);

  }
 
  @override
  Widget build(BuildContext context) {
    return new Swiper(
      itemCount: 3,
      itemBuilder: (BuildContext context,int index){
        return new Image.network("https://www.itying.com/images/flutter/1.png",fit: BoxFit.fill,);
      },
      pagination: new SwiperPagination(),
      autoplay:true,
      // control: new SwiperControl(),
    );
  }
}