import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String userName;
  int sex=1;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('学员登记系统'),
         ),
         body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: '输入用户信息'
                  ),
                  onChanged: (value) {
                   setState(() {
                     this.userName = value; 
                   });
                  },
              ),
              Row(
                children: <Widget>[
                  Text('男'),
                  Radio(
                    value: 1,
                    onChanged: (value) {
                      setState(() {
                         this.sex = value;
                      });
                    },
                    groupValue: this.sex,
                  ),
                  SizedBox(width: 20),
                  Text('女'),
                  Radio(
                    value: 2,
                    onChanged: (value) {
                      setState(() {
                        this.sex = value; 
                      });
                    },
                    groupValue: this.sex,
                  ) 
                ],
              )
                
              ],
            ),
         )
       ) ,
    );
  }
}