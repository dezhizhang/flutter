import 'package:flutter/material.dart';
import '../utils/ScreenAdaper.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int selectIndex = 0;
 
  @override
  Widget build(BuildContext context) {
    ScreenAdaper.init(context);
    var leftWidth = ScreenAdaper.getScreenWidth()/4;
    var rightItemWidth = (ScreenAdaper.getScreenWidth() -leftWidth-40)/3;
    return Row(
      children: <Widget>[
        Container(
          width: leftWidth,
          height: double.infinity,
          child: ListView.builder(
            itemCount: 18,
            itemBuilder: (context,index) {
              return Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        this.selectIndex = index; 
                      });
                    },
                    child: Container(
                      height: ScreenAdaper.height(46),
                      child: Text('${index}',textAlign: TextAlign.center),
                      color: this.selectIndex == index ? Colors.pink:Colors.white,
                      width: double.infinity,
                    ),
                  ),
                  Divider()
                ],
              );
            },
          )
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: double.infinity,
            color: Colors.blue,
            child: Container(
              height: double.infinity,
              color: Color.fromRGBO(240, 246, 246, 0.9),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1/1.2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10
                ),
                itemCount: 10,
                itemBuilder: (context,index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1/1,
                          child: Image.network('src'),
                        ),
                        Container(
                          height: ScreenAdaper.height(28),
                          child: Text('女装'),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ),
        )
      ],
    );
  }
}