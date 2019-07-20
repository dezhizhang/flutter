import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _alertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('提示信息!'),
          content: Text('你确定要删除吗'),
          actions: <Widget>[
            RaisedButton(
              child: Text('确定'),
              color: Colors.pink,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            RaisedButton(
              child: Text('取消'),
              color: Colors.black26,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        );
      }
    );
  }
  _simpleDialog() {
    showDialog(
      context: context,
      builder: (context) {
          return SimpleDialog(
            title: Text('请选择内容'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('option A'),
                onPressed: () {
                  print('option A');
                  Navigator.pop(context);
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('option B'),
                onPressed: () {
                  print('option B');
                  Navigator.pop(context);
                },
              ),
              Divider()
            ],
          );
      }
    );
  }
  _showMonalBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('选项1'),
                onTap: () {
                  print('选项1');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('选项2'),
                onTap: () {
                  print('选项2');
                  Navigator.pop(context);
                },
              )
            ],
          ),
        );
      }
    );
  }
  _toast() {
   Fluttertoast.showToast(
        msg: "确定取消",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('弹框组件'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('alertDialog'),
            color: Colors.green,
            textColor: Colors.white,
            onPressed: _alertDialog,
          ),
          RaisedButton(
            child: Text('simpleDialog'),
            color: Colors.pink,
            textColor: Colors.white,
            onPressed: _simpleDialog,
          ),
          RaisedButton(
            child: Text('showMonalBottomSheet'),
            color: Colors.red,
            textColor: Colors.white,
            onPressed: _showMonalBottomSheet,
          ),
          RaisedButton(
            child: Text('toast'),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: _toast,
          )
        ],
      ),
    );
  }
}