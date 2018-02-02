import 'package:flutter/material.dart';

class ReadHubDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Widget>drawList = [new UserAccountsDrawerHeader(

      accountName: new Text("flyou"),
      accountEmail: new Text("fangjaylong@gmail.com"),
      currentAccountPicture: new CircleAvatar(backgroundImage: new NetworkImage(
          "https://ww2.sinaimg.cn/thumb150/a2f7c645jw8f6qvlbp1g7j20js0jrgrz.jpg"),),
      onDetailsPressed: () {
        Navigator.pop(context);
      },),
    new ListTile(leading: new Icon(Icons.person),
      title: new Text("about me"),
      onTap: () {
        Navigator.pop(context);
        Navigator.of(context).pushNamed("/about_me");
      },
    ),
    new ListTile(leading: new Icon(Icons.scanner),
      title: new Text("about app"),
      onTap: () {
        Navigator.pop(context);
        Navigator.of(context).pushNamed("/about_app");
      },
    ),
    new ListTile(leading: new Icon(Icons.looks),
      title: new Text("look project"),
      onTap: () {
        Navigator.pop(context);
        Navigator.of(context).pushNamed("/code");
      },
    ),
    ];
    return new Drawer(child: new ListView(children: drawList,),);
  }
}