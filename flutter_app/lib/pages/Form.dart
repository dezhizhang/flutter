import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String userName;
  int sex=1;
  var checkbox = false;
  String tags;
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
              ),
              Row(
                children: <Widget>[
                  Text('吃饭'),
                  Checkbox(
                    value: this.checkbox,
                    onChanged: (value) {
                      setState(() {
                        this.checkbox = value;
                      });
                    },
                  ),
                 Text('睡觉'),
                 Checkbox(
                   value: this.checkbox,
                   onChanged: (value) {
                     setState(() {
                       this.checkbox = value; 
                     });
                   },
                 )
                ],
              ),
              TextField(
                    maxLength: 3,
                    decoration: InputDecoration(
                      hintText: "描述信息",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value){
                      setState(() {
                        this.tags = value;
                      });
                  },
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  child: Text('确定'),
                  onPressed: () {
                    print(this.sex);
                    print(this.userName);
                    print(this.checkbox);
                    print(this.tags);
                  },
                  color: Colors.pink,
                  textColor: Colors.white,
                ),
              )  
              ],
            ),
         )
       ) ,
    );
  }
}