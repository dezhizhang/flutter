import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../../utils/Utils.dart';
import '../../config/Config.dart';
import '../../model/CategoryModel.dart';
import '../../model/CategoryDetailModel.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _selectedIndex = 0;
  List _categoryList = [];
  List _categoryDetail = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getCategoryData();
   
  }
  getCategoryData() async {
    var url = Config.baseURL + '/api/category/list';
    var result = await Dio().get(url);
    var categoryList = CategoryModel.fromJson(result.data);
    setState(() {
      this._categoryList = categoryList.data;
    });
     var id = categoryList.data[0].sId;
     this.getCategoryDetail(id);
  }
  getCategoryDetail(id) async {
    var url = Config.baseURL + '/api/categoryDetail/list?classify_id=${id}';
    var result = await Dio().get(url);
    var categoryDetail = CategoryDetailModel.fromJson(result.data);
    setState(() {
      this._categoryDetail = categoryDetail.data;
    });
  }
  @override
  Widget build(BuildContext context) {
    Utils.init(context);
    var leftWidth = (Utils.getScreenWidth()) / 4;
    return Row(
      children: <Widget>[
        this._categoryList.length > 0 ? 
               Container(
          width: leftWidth,
          height: double.infinity,
          color: Colors.white,
          child: ListView.builder(
            itemCount: this._categoryList.length,
            itemBuilder: (context,index){
              return Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        this._selectedIndex = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      color: this._selectedIndex == index ? Color.fromRGBO(242,242,242,1):Colors.white,
                      width: double.infinity,
                      height: Utils.height(80),
                      child: Text('${this._categoryList[index].name}',textAlign:TextAlign.center,style:TextStyle(
                        fontSize: Utils.width(28),
                        color:this._selectedIndex == index ? Color.fromRGBO(69,111,251,1):Color.fromRGBO(102,102,102,1)

                      ))
                    ),
                  ),
                  Divider(height: 1),
                ],
              );
            },
          )
        ):Text('加载中'),
        this._categoryDetail.length > 0 ?
        Expanded(
          flex: 1,
          child:   Container(
            padding: EdgeInsets.all(10),
            height: double.infinity,
            color: Color.fromRGBO(242,242,242,1),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                childAspectRatio: 1/1.2,
                mainAxisSpacing: 10
              ),
              itemCount: this._categoryDetail.length,
              itemBuilder: (context,index){
                return Container(
                  height: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image.network('${Config.baseURL}${this._categoryDetail[index].classifyImg}',fit: BoxFit.cover),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: Utils.height(28),
                        child: Text('${this._categoryDetail[index].price}'),
                      )
                    ],
                  ),
                );
              },
            )
          ),
        ):Text('加载中...')
      ],
    );
  }
}