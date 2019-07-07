import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';


class NetPage extends StatefulWidget {
  NetPage({Key key}) : super(key: key);

  _NetPageState createState() => _NetPageState();
}

class _NetPageState extends State<NetPage> {
  var subscription;
  String text;
  @override
  void initState() {
      // TODO: implement initState
      super.initState();
      subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
        if(result == ConnectivityResult.mobile) {
            setState(() {
             this.text = '处理手机'; 
            });
        } else if(result ==  ConnectivityResult.wifi) {
          setState(() {
            this.text = '处理wifi'; 
          });
        } else {
          setState(() {
            this.text = '没有网络'; 
          });
        }
      });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('检测网格情况'),
         ),
         body: Text('${this.text}'),
       ),
    );
  }
}