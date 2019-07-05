import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';


class DatePickerPage extends StatefulWidget {
  DatePickerPage({Key key}) : super(key: key);

  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  String dateTime = '2019-10-12';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('日期组件'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(this.dateTime),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: () {
              showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1980),
                lastDate: DateTime(2420),
              ).then((res) => {
                  setState(() {
                    this.dateTime = formatDate(res,[yyyy,'年',mm,'月',dd,'日']);
                  })
              });
            },
          )
        
        ],
      ),
    );
  }
}
