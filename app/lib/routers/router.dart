import 'package:flutter/material.dart';
import '../tabs/Tabs.dart';
import '../pages/Detail.dart';
import '../pages/Search.dart';

//配置路由
final routes = {
  '/':(context) => Tabs(),
  '/detail':(context,{arguments}) => DetailPage(arguments:arguments),
  '/search':(context) => SearchPage()
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
