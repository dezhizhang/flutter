import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();
  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 24),
        child: Form(
          key:_formKey,
          autovalidate: true,
          onChanged: () {
            setState(() {
             this.username =  this._unameController.text;
             this.password = this._pwdController.text;
            });
          },
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                controller: _unameController,
                decoration: InputDecoration(
                  labelText: '用户名',
                  hintText: '请输入用户名',
                  icon: Icon(Icons.person)
                ),
                validator: (value) {
                  return value.trim().length > 0 ? null:'用户名不能为空';
                },
              ),
              TextFormField(
                controller: _pwdController,
                decoration: InputDecoration(
                  labelText: '密码',
                  hintText: '请输入密码',
                  icon: Icon(Icons.lock),
                  
                ),
                obscureText: true,
                validator: (value) {
                  return value .trim().length > 5 ? null:'密码不能少于6位';
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 28),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        child: Text('登录'),
                        padding: EdgeInsets.all(15),
                        color:Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          if((_formKey.currentState as FormState).validate()) {
                            print(this.username);
                            print('---------------');
                            print(this.password);

                          }
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}