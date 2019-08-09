import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './routers/router.dart';
import './provder/Counter.dart';


void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   initialRoute: '/login',
    //   onGenerateRoute: onGenerateRoute,
    //   theme: ThemeData(
    //     primarySwatch: Colors.pink
    //   ),
    // );
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(builder: (_) => Counter()),
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      ),
    );
  }
}