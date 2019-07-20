import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var sex = 1;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单页面'),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            Text('男'),
            Radio(
              value: 1,
              onChanged: (value) {
                setState(() {
                 this.sex = value; 
                });
              },
              groupValue: this.sex
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
            ),
            Switch(
              value: this.flag,
              onChanged: (value) {
                setState(() {
                 this.flag = value; 
                });
              },
            )
          ],
        ),
      )
    );
  }
}