
import 'package:flutter/material.dart';

class MyDialog extends Dialog{

  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 400,
          height: 300,
          color: Colors.white,
          child: Column(
          // mainAxisAlignment: MainAxisAlignment.top,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text('关于我们'),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                )
              ),
              Divider(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(left: 10),
                child: Text('我是内容',textAlign: TextAlign.left),
              )
            ],
          ),
        ),
      )
    );
  }
}