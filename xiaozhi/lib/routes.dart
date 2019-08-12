import 'package:flutter/material.dart';
import './Text.dart';
import './Transform.dart';
import './Dio.dart';



final routes = {
  '/text':(context) => TextPage(),
  '/transform':(context) => TransformPage(),
  '/dio':(context) => DioPage()

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
