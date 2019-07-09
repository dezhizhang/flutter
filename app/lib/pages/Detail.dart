import 'package:app/utils/ScreenAdaper.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../config/Config.dart';
import '../model/ProductModel.dart';



class DetailPage extends StatefulWidget {
  Map arguments;
  DetailPage({Key key,this.arguments}) : super(key: key);

  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List detailData = [];
  int page = 1;
 
  void initState() {
    super.initState();
    this.getDetailList();
  }
  getDetailList() async{
     var result  = await Dio().get('${Config.baseURL}/api/plist?cid=${widget.arguments['cid']}&page=${this.page}');
     var detailList = ProductModel.fromJson(result.data);
     print(detailList.result);

     setState(() {
        this.detailData.addAll(detailList.result);
     });
  }
  Widget detailListWidget() {
    return  Container(
        // padding: EdgeInsets.only(l10),
        margin: EdgeInsets.only(top: ScreenAdaper.height(80)),
        child: ListView.builder(
          itemBuilder: (context,index) {
            if(this.detailData.length > 0) {
              String pic = this.detailData[index].pic;
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: ScreenAdaper.width(180),
                        height: ScreenAdaper.height(180),
                        child: Image.network('${Config.baseURL}/${pic.replaceAll('\\', '/')}',fit: BoxFit.cover),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: ScreenAdaper.height(180),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('${this.detailData[index].title}',maxLines: 2,overflow: TextOverflow.ellipsis),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: ScreenAdaper.height(36),
                                    margin: EdgeInsets.only(right: 10),
                                    padding: EdgeInsets.fromLTRB(10, 3, 10, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(230, 230, 230, 0.9),
                                    ),
                                    child: Text('评价人数'),
                                  ),
                                  Container(
                                    height: ScreenAdaper.height(36),
                                    margin: EdgeInsets.only(right: 10),
                                    padding: EdgeInsets.fromLTRB(10,3, 10, 0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(230, 230, 230, 0.9),
                                    ),
                                    child: Text('商品分类',),
                                  )
                                ],
                              ),
                              Text('￥${this.detailData[index].price}',style: TextStyle(color: Colors.pink,fontSize: 14))
                            ],
                          )
                        ),
                      )
                    ],
                  ),
                  Divider(height: 16)
                ],
              );
            } else {
              return Container(
                child: Text('暂无数据'),
              );
            }
          },
          itemCount: this.detailData.length
        ),
      );
  }
  Widget subHeaderWidget() {
    return  Positioned(
            top: 0,
            height: ScreenAdaper.height(80),
            width: ScreenAdaper.width(750),
            child: Container(
              width: ScreenAdaper.height(80),
              height: ScreenAdaper.width(750),
              // color: Colors.white,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: Colors.pink
                  )
                )
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {

                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, ScreenAdaper.height(18), 0, ScreenAdaper.height(18)),
                        child: Text('综合',textAlign: TextAlign.center,style: TextStyle(color: Colors.pink)),
                      ),
                    ),
                  ),
                   Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {

                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, ScreenAdaper.height(18), 0, ScreenAdaper.height(18)),
                        child: Text('销量',textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                   Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {

                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, ScreenAdaper.height(18), 0, ScreenAdaper.height(18)),
                        child: Text('价格',textAlign: TextAlign.center),
                      ),
                    ),
                  ),
                   Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        _scaffoldKey.currentState.openEndDrawer();
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, ScreenAdaper.height(18), 0, ScreenAdaper.height(18)),
                        child: Text('筛选',textAlign: TextAlign.center),
                      ),
                    ),
                  )
                ],
              )
            ),
        );
  }
  @override
  Widget build(BuildContext context) {
    ScreenAdaper.init(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('商品列表'),
        actions: <Widget>[
          Text(' ')
        ],
      ),
      endDrawer: Drawer(
        child: Container(
          child: Text('我是筛选功能'),
        ),
      ),
      body:Stack(
        children: <Widget>[
          detailListWidget(),
          subHeaderWidget(),
        ],
      )
    );
  }
}