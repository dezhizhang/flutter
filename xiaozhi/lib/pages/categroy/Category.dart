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
    return Row(
      children: <Widget>[
        Container(
          width: Utils.width(160),
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
            height: double.infinity,
            color: Colors.blue,
            child: Text('右侧'),
          ),
        ),
      ],
    );
  }
}