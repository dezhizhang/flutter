import 'package:flutter/material.dart';
import '../../utils/Utils.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Utils.init(context);
    var leftWidth = (Utils.getScreenWidth()) / 4;
    return Row(
      children: <Widget>[
        Container(
          width: leftWidth,
          height: double.infinity,
          color: Colors.white,
          child: ListView.builder(
            itemCount: 18,
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
                      child: Text('hell',textAlign:TextAlign.center,style:TextStyle(
                        fontSize: Utils.width(28),
                        color:this._selectedIndex == index ? Color.fromRGBO(69,111,251,1):Color.fromRGBO(102,102,102,1)

                      ))
                    ),
                  ),
                  Divider(),
                ],
              );
            },
          )
        ),
        Expanded(
          flex: 1,
          child: Container(
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
              itemCount: 18,
              itemBuilder: (context,index){
                return Container(
                  height: double.infinity,
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image.network('https://www.itying.com/images/flutter/5.png',fit: BoxFit.cover),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: Utils.height(28),
                        child: Text('男装'),
                      )
                    ],
                  ),
                );
              },
            )
          ),
        ),
      ],
    );
  }
}