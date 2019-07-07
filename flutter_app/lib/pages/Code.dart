import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class CodePage extends StatefulWidget {
  CodePage({Key key}) : super(key: key);

  _CodePageState createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  var barcode;
  Future scan() async{
    try{
      String barcode = await BarcodeScanner.scan();
      setState(() { return this.barcode = barcode; }); 
    } on PlatformException  catch(e) {
      if(e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
           return this.barcode = 'The user did not grant the camera permission!'; 
        });
      } else {
        setState(() { return this.barcode = 'Unknown error: $e'; });
      }
    } on FormatException {
      setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)'); 
    } catch(e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text('扫码'),
          ),
          body: Text('${this.barcode}'),
        ),
    );
  }
}