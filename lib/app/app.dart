import 'package:flutter/material.dart';
import 'package:readhub/app/ui/main/FirstPage.dart';
import 'package:readhub/app/ui/main/SecondPage.dart';
import 'package:readhub/app/ui/main/ThirdPage.dart';
import 'package:readhub/app/widget/ReadHubDrawer.dart';

class ReadHubApp extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return new ReadHubAppState();
  }
}

class ReadHubAppState extends State<ReadHubApp>
    with SingleTickerProviderStateMixin {

  TabController controller;
  List<Tab> titleList = [
    new Tab(child: new Text("热门话题")),
    new Tab(child: new Text("科技动态")),
    new Tab(child: new Text("开发者资讯"))
  ];
  List<Widget>tabViewList = [
    new FirstPage(),
    new SecondPage(),
    new ThirdPage()
  ];

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ReadHub"),
        bottom: new TabBar(
          tabs: titleList,
          controller: controller,

        ),
      ), drawer: new Drawer(
      child: new ReadHubDrawer(),
    ),
      body: new TabBarView(
        children: tabViewList,
        controller: controller,
      ),
    );
  }
}