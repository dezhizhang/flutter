import 'package:flutter/material.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

class WebView extends StatefulWidget {
  WebView({Key key}) : super(key: key);

  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('webview加载外部数据'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: InAppWebView(
              initialUrl: 'https://www.baidu.com',
            ),
          )
        ],
      )
    );
  }
}