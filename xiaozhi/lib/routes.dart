import 'package:flutter/material.dart';
import './Search.dart';
import './Info.dart';
import './Change.dart';

final routes = {
  '/search':(context,{arguments}) => SearchPage(arguments: arguments),
  '/info':(context,{arguments}) => InfoPage(arguments:arguments),
  '/change':(context) => ChaangePage()
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
