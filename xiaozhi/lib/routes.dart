import 'package:flutter/material.dart';
import './Search.dart';
import './Info.dart';
import './Change.dart';
import './Text.dart';
import './Form.dart';
import './Date.dart';
import './NewDate.dart';
import './Dialog.dart';
import './Custom.dart';
import './Equipment.dart';
import './Lanucher.dart';
import './Applay.dart';
import './WxPay.dart';
import './Webview.dart';
import './Video.dart';
import './Storage.dart';
import './Container.dart';
import './Image.dart';
import './ListView.dart';
import './GraidView.dart';
import './Padding.dart';
import './Strack.dart';
import './Card.dart';
import './Colum.dart';
import './Flex.dart';
import './Box.dart';
import './Transform.dart';


final routes = {
  '/search':(context,{arguments}) => SearchPage(arguments: arguments),
  '/info':(context,{arguments}) => InfoPage(arguments:arguments),
  '/change':(context) => ChaangePage(),
  '/text':(context) => TextPage(),
  '/form':(context) => FormPage(),
  '/date':(context) => DatePage(),
  '/newdate':(context) => MewDatePage(),
  '/dialog':(context) => DialogPage(),
  '/custom':(context) => CustomPage(),
  '/equip':(context) => EquipmentPage(),
  '/luncher':(context) => LancherPage(),
  '/applay':(context) => ApplayPage(),
  '/wxplay':(context) => WxPage(),
  '/webview':(context) => WebView(),
  '/video':(context) => VidoPage(),
  '/storage':(context) => StroagePage(),
  '/container':(context) => ContainerPage(),
  '/image':(context) => ImagePage(),
  '/listview':(context) => ListViewPage(),
  '/graidview':(context) => GraidViewPage(),
  '/padding':(context) => PaddingPage(),
  '/strack':(context) => StrackPage(),
  '/card':(context) => CardPage(),
  '/colum':(context) => ColumPage(),
  '/flex':(context) => FlexPage(),
  '/box':(context) => BoxPage(),
  '/transform':(context) => TransPage()

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
