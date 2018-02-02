import 'package:flutter/material.dart';

import 'package:readhub/app/app.dart';
import 'package:readhub/app/ui/web/WebPage.dart';

final readHubTheme = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
);

void main() {
  runApp(
        new MaterialApp(
          routes:  {
            "/about_me": (context) =>
            new WebPage("about me", "http://flyou.ren/about/"),
            "/about_app": (context) =>
            new WebPage("about app", "http://flyou.ren/about/"),
            "/code": (context) =>
            new WebPage("look project", "https://github.com/flyou/readhub_flutter"),

          },
          home: new ReadHubApp(),
          theme: readHubTheme,)
    );
}

