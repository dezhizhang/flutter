import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class MewDatePage extends StatefulWidget {
  MewDatePage({Key key}) : super(key: key);

  _MewDatePageState createState() => _MewDatePageState();
}

class _MewDatePageState extends State<MewDatePage> {
  bool showTitle = true;
  DateTime dateTime = DateTime.now();
  _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: this.showTitle,
        confirm: Text('确定',style: TextStyle(color: Colors.pink)),
        cancel: Text('取消',style: TextStyle(color: Colors.cyan))
      ),
      minDateTime: DateTime.parse('1980-05-12'),
      maxDateTime: DateTime.parse('2025-12-14'),
      initialDateTime: this.dateTime,
     locale: DateTimePickerLocale.zh_cn, 
      dateFormat: 'yyyy-MMMM-dd',
      onCancel: () {

      },
      onConfirm: (dateTime,List<int> index) {
        setState(() {
          this.dateTime = dateTime; 
        });
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('第三方日期组件'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  children: <Widget>[
                    Text('${formatDate(this.dateTime,[yyyy,'年',mm,'月',dd,'日'])}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showDatePicker,
              )
            ],
          )
        ],
      )
    );
  }
}
