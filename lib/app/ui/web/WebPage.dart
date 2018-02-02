import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebPage extends StatelessWidget {

  final title;
  final url;


  WebPage(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      url: url,
      appBar: new AppBar(
        title: new Text(title),
      ), withJavascript: true,
    );
  }
}