import 'package:flutter/material.dart';
import './Text.dart';
import './Transform.dart';



final routes = {
  '/text':(context) => TextPage(),
  '/transform':(context) => TransformPage(),

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
