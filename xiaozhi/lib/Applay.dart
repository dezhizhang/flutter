import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:sy_flutter_alipay/sy_flutter_alipay.dart';

class ApplayPage extends StatefulWidget {
  ApplayPage({Key key}) : super(key: key);

  _ApplayPageState createState() => _ApplayPageState();
}

class _ApplayPageState extends State<ApplayPage> {
  _doAliPay() async{
         var dio = Dio();
         Response response = await dio.get("http://agent.itying.com/alipay/");
         print(response.data);
  
        var payInfo = response.data;
        var result = await SyFlutterAlipay.pay(
            payInfo,
            // urlScheme: '你的ios urlScheme', //前面配置的urlScheme
            // isSandbox: true //是否是沙箱环境，只对android有效
        );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('支付宝支付'),
      ),
      body: Container(
        child: RaisedButton(
          child: Text('支付宝支付'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: _doAliPay,
        ),
      )
    );
  }
}