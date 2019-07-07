import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

class DevicePage extends StatefulWidget {
  DevicePage({Key key}) : super(key: key);

  _DevicePageState createState() => _DevicePageState();
}

class _DevicePageState extends State<DevicePage> {
  void initState() {
    super.initState();
    this.getDeviceInfo();
  }
  getDeviceInfo() async{
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    print('${androidInfo.model}'); 
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('获取设置信息'),
         ),
         body: Text('获取设置信息'),
       )
    );
  }
}