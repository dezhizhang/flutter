import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:xiaozhi/utils/Utils.dart';
import '../model/FocusModel.dart';
import 'package:dio/dio.dart';

class SwiperList extends StatefulWidget {
  SwiperList({Key key}) : super(key: key);

  @override
  _SwiperListState createState() => _SwiperListState();
}

class _SwiperListState extends State<SwiperList> {
  List _focusList = [];
  @override
  void initState() {
    super.initState();
    this._getFocusData();
  }
  _getFocusData() async {
    var url = Utils.baseURL() + '/api/focus/info';
    var result= await Dio().get(url);
    var focusList = FocusModel.fromJson(result.data);
    setState(() {
      this._focusList = focusList.data;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(this._focusList.length > 0 ){
    return new Swiper(
      itemCount: this._focusList.length,
      itemBuilder: (BuildContext context,int index){
        return new Image.network("${Utils.baseURL()}${this._focusList[index].focusImg}",fit: BoxFit.fill,);
      },
      pagination: new SwiperPagination(),
      autoplay:true,
      // control: new SwiperControl(),
    );
    } else {
      return Text('加载中...');
    }
  }
}