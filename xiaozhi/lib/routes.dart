import 'package:flutter/material.dart';
import './Login.dart';
import './Form.dart';
import './Process.dart';


final routes = {
  '/login':(context) => LoginPage(),
  '/form':(context) => FormPage(),
  '/process':(context) => ProcessPage(),
  
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if(pageContentBuilder !=null) {
    if(settings.arguments !=null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context,arguments:settings.arguments)
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  }
};
