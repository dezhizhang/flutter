import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class GetPage extends StatefulWidget {
  GetPage({Key key}) : super(key: key);

  _GetPageState createState() => _GetPageState();
}

class _GetPageState extends State<GetPage> {
  void initState() {
    super.initState();
    Map userInfo = {
      'userName':'张三',
      'age':20
    };

    print(json.encode(userInfo));
  }
  @override
  Widget build(BuildContext context) {
  
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('get请求'),
         ),
         body: Container(
           child: Column(
             children: <Widget>[
               RaisedButton(
                  child: Text('获取数据'),
                  color: Colors.pink,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: () async{
                    var result = await http.get('https://cnodejs.org/api/v1/topics');
                    if(result.statusCode == 200) {
                       print(json.decode(result.body));
                    }
                  },
               )
             ],
           ),
         )
       ),
    );
  }
}