import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

class EquipmentPage extends StatefulWidget {
  EquipmentPage({Key key}) : super(key: key);

  _EquipmentPageState createState() => _EquipmentPageState();
}

class _EquipmentPageState extends State<EquipmentPage> {
  @override
  void initState() {
    super.initState();
    this.getDivice();
  
  }
  getDivice() async {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      print('Running on ${androidInfo.model}'); 
      
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('获取设置信息'),
      ),
    );
  }
}