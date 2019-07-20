import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String userName;
  int sex = 1;
  List list = [
    {
      'checked':false,
      'title':'吃饭'
    },
    {
      'checked':true,
      'title':'睡觉'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              maxLength: 1,
              decoration: InputDecoration(
                hintText: '请输入用户信息',
                border: OutlineInputBorder(),
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
              children: this.list.map((item){
               
                return Column(
                  children: <Widget>[
                    Text(item['title']),
                    Checkbox(
                    value: item['checked'],
                    onChanged: (value) {
                        setState(() {
                        item['checked'] = value;
                        });
                      },
                    )
                  ],
                );
                
              }).toList()
            ),
            TextField(
              maxLength: 3,
              decoration: InputDecoration(
                hintText: '请输入信息',
                border: OutlineInputBorder(),

              ),
              onChanged: (value) {

              },
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.pink,
                textColor: Colors.white,
                child: Text('登录'),
                onPressed: () {
                  print(this.userName);
                  print(this.sex);

                },
            )
           
            )
          ],
        ),
      )
    );
  }
}