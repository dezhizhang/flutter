import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
 Future<int> _showModalBottomSheet() {
   return showModalBottomSheet<int>(
     context: context,
     builder: (BuildContext context) {
       return ListView.builder(
         itemCount: 30,
         itemBuilder: (BuildContext context,int index) {
           return ListTile(
             title: Text('$index'),
             onLongPress: () {
               Navigator.of(context).pop(index);
             },
           );

         },
       );
     }

   );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('弹框组件'),
      ),
      body: RaisedButton(
        child: Text('显示底部菜单列表'),
        onPressed: () async{
           int type = await _showModalBottomSheet();
           print(type);
        },
      )
    );
  }
}