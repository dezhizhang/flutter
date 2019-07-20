import 'package:flutter/material.dart';

class DatePage extends StatefulWidget {
  DatePage({Key key}) : super(key: key);

  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  var now = DateTime.now();
  String time;
  showPicker() async{

    var result = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100)
    );
    setState(() {
     this.now = result; 
    });
   
  }
  void initState() {
    super.initState();
    // print(now.millisecondsSinceEpoch);
    // print(DateTime.fromMicrosecondsSinceEpoch(1563608181633));
  }
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
              Text('${this.now}'),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          onTap:showPicker,
          )
        ],
      )
    );
  }
}