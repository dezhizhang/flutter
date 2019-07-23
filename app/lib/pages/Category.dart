import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../utils/ScreenAdaper.dart';
import '../model/CateModel.dart';
import '../config/Config.dart';


class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> with AutomaticKeepAliveClientMixin {
  int selectIndex = 0;
  List cateData = [];
  List cateProductData = [];

  //保持页面装态
  bool get wantKeepAlive => true;
  void initState() {
    super.initState();
    this.getCateList();
  }

  getCateList() async{
      var result  = await Dio().get('${Config.baseURL}/api/pcate');
      var cateList = CateModel.fromJson(result.data);
      setState(() {
        this.cateData = cateList.result; 
      });
      getCateProduct(cateList.result[0].sId);
  }
  getCateProduct(pid) async{
      var result  = await Dio().get('${Config.baseURL}/api/pcate?pid=${pid}');
      var cateProductList = CateModel.fromJson(result.data);
      setState(() {
        this.cateProductData = cateProductList.result; 
      });
  }
  @override
  Widget build(BuildContext context) {
    ScreenAdaper.init(context);
    var leftWidth = ScreenAdaper.getScreenWidth()/4;
    var rightItemWidth = (ScreenAdaper.getScreenWidth() -leftWidth-40)/3;
    rightItemWidth = ScreenAdaper.width(rightItemWidth);
    var rightItemHeight = rightItemWidth + ScreenAdaper.height(28);
    return Scaffold(
    appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.center_focus_weak,size: 28, color: Colors.white),
          onPressed: () {

          },
        ),
        title: InkWell(
          child: Container(
            height: ScreenAdaper.height(68),
            decoration: BoxDecoration(
              color: Color.fromRGBO(233, 233, 233, 0.8),
              borderRadius: BorderRadius.circular(30)
            ),
            padding: EdgeInsets.only(left:10),
            child: Row(
              children: <Widget>[
                Icon(Icons.search),
                Text('笔记本',style: TextStyle(
                  fontSize: ScreenAdaper.fontSize(28)
                ))
              ],
            ),
          ),
          onTap: () {
            Navigator.of(context).pushNamed('/search');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.message,size: 28,color: Colors.white),
            onPressed: () {

            },
          )
        ],
      ),
      body: Row(
      children: <Widget>[
        Container(
          width: leftWidth,
          height: double.infinity,
          child: ListView.builder(
            itemCount: this.cateData.length,
            itemBuilder: (context,index) {
              return Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        this.selectIndex = index; 
                        this.getCateProduct(this.cateData[index].sId);
                      });
                    },
                    child: Container(
                      height: ScreenAdaper.height(84),
                      padding: EdgeInsets.only(top: ScreenAdaper.height(30)),
                      child: Text('${this.cateData[index].title}',textAlign: TextAlign.center),
                      color: this.selectIndex == index ? Color.fromRGBO(240, 246, 246, 0.9):Colors.white,
                      width: double.infinity,
                    ),
                  ),
                  Divider(height: 1)
                ],
              );
            },
          )
        ),
        Expanded(
          flex: 1,
          child: Container(
            // padding: EdgeInsets.all(10),
            height: double.infinity,
            child: Container(
              height: double.infinity,
              color: Color.fromRGBO(240, 246, 246, 0.9),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: rightItemWidth / rightItemHeight,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10
                ),
                itemCount: this.cateProductData.length,
                itemBuilder: (context,index) {
                  if(this.cateProductData.length > 0) {
                     var pic = this.cateProductData[index].pic;
                     return InkWell(
                       onTap: () {
                          Navigator.of(context).pushNamed('/detail',arguments: {
                             'cid':this.cateProductData[index].sId
                          });
                       },
                       child:Container(
                          child: Column(
                            children: <Widget>[
                              AspectRatio(
                                aspectRatio: 1/1,
                                child: Image.network('${Config.baseURL}/${pic.replaceAll('\\', '/')}',fit: BoxFit.fill),
                              ),
                              Container(
                                height: ScreenAdaper.height(28),
                                child: Text('${this.cateProductData[index].title}'),
                              )
                            ],
                          ),
                        )
                     );
                  } else {
                    return Container(
                      child: Text('暂无数据'),
                    );
                  }
                },
              ),
            )
          ),
        )
      ],
    ),
    );
  }
}