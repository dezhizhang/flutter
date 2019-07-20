import 'package:flutter/material.dart';
import './Search.dart';
import './Info.dart';
import './Change.dart';
import './Text.dart';
import './Form.dart';
import './Date.dart';

final routes = {
  '/search':(context,{arguments}) => SearchPage(arguments: arguments),
  '/info':(context,{arguments}) => InfoPage(arguments:arguments),
  '/change':(context) => ChaangePage(),
  '/text':(context) => TextPage(),
  '/form':(context) => FormPage(),
  '/date':(context) => DatePage(),
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
